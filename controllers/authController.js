const jwt = require("jsonwebtoken");
require("dotenv").config();
const bcrypt = require("bcryptjs");

const notificationController = require("../controllers/notificationController");
const User = require("../models").User;
const UserRole = require("../models").UserRole;
const UserContact = require("../models").UserContact;
const Staff = require("../models").Staff;
const Role = require("../models").Role;
const City = require("../models").City;
const State = require("../models").State;
const Country = require("../models").Country;
const District = require("../models").District;
const Company = require("../models").Company;
const Institute = require("../models").Institute;
const Department = require("../models").Department;
const Service = require("../models").Service;
const UserPersonalDetails = require("../models").UserPersonalDetails;
const StudentMarks = require("../models").StudentMarks;
const StudentRemarks = require("../models").StudentRemarks;
const InstituteStaff = require("../models").InstituteStaff;
const StudentEnrollment = require("../models").StudentEnrollment;
const UserDesignation = require("../models").UserDesignation;
const EntityUser = require("../models").EntityUser;
const InstituteProgramme = require("../models").InstituteProgramme;
const OTP = require("../models").OTP;
const tokenList = {};

const Sequelize = require("sequelize");
// const { sequelize } = require("../sequelize/models");
const Op = Sequelize.Op;
const {
  success,
  errorResponse,
  validation,
  userCredentials,
  EmailNotification,
  SMSNotification,
  CreateNotification,
} = require("../responseApi");
const { response } = require("express");

//change the function. make generic. if the type is institute, fetch institute details. if user belongs to dept, fetch dept details. if the user belongs to service,
//fetch his
exports.getUserDetails = function (req, res) {
  // var studentDetails =[];
  UserPersonalDetails.findOne({
    where: {
      user_id: req.user.id,
    },
    include: [
      {
        model: User,
        attributes: ["email", "phone"],
      },
    ],
  })
    .then((userPersonalDetails) => {
      

      UserRole.findAll({
        attributes: [],
        where: {
          user_id: req.user.id,
        },
        include: [
          {
            model: Role,
            attributes: ["id", "name", "type"],
          },
        ],
      })
        .then(async (userRole) => {
          
          let user_roles = [];
          //if not student
          let cio_name_ur;
          for (ur of userRole) {
            
            if (ur.Role.name == "Student") {
              let student = await StudentEnrollment.findOne({
                where: {
                  user_id: req.user.id,
                },
              });

              let institute = await InstituteProgramme.findOne({
                attributes: ["institute_id"],
                where: {
                  id: student.institute_programme_id,
                },
                include: [
                  {
                    model: Institute,
                    attributes: ["name"],
                  },
                ],
              });
              cio_name_ur = institute.Institute.name;
            } else {
              queryOptions = {
                where: {
                  user_id: req.user.id,
                },
                attributes: ["cio_id"],
              };
             
              if (ur.Role.type == "dept") {
                queryOptions.include = ["Department"];
              } else if (ur.Role.type == "company") {
                queryOptions.include = ["Company"];
              } else if (
                ur.Role.type == "institute" &&
                ur.Role.name != "Student"
              ) {
                
                queryOptions.include = ["Institute"];
               
              } else if (ur.Role.type == "service") {
                console.log("Service ut is oitsbhdbvjhbsd");
                queryOptions.include = [Service];
              }

              let cio_ur = await EntityUser.findOne(queryOptions);
             
              cio_name_ur =
                ur.Role.type == "dept"
                  ? cio_ur.Department.name
                  : ur.Role.type == "company"
                  ? cio_ur.Company.name
                  : ur.Role.type == "institute" && ur.Role.name != "Student"
                  ? cio_ur.Institute.name
                  : ur.Role.type == "service"
                  ? cio_ur.Service.name
                  : null;
            } //else
            user_roles.push({
              id: ur.Role.id,
              name: ur.Role.name,
              type: ur.Role.type,
              cio_name: cio_name_ur,
            });
          } //for userRole
          
          UserContact.findOne({
            where: {
              user_id: req.user.id,
            },
            include: [
              {
                model: City,
                attributes: ["name"],
              },
              {
                model: State,
                attributes: ["name"],
              },
              {
                model: District,
                attributes: ["name"],
              },
              {
                model: Country,
                attributes: ["name"],
              },
            ],
          }).then(async (userContact) => {
            let selectedRole = await Role.findOne({
              attributes: ["id", "name", "type"],
              where: {
                id: req.user.role_id,
              },
            });
            const response = {
              User: userPersonalDetails,
              physically_disabled_title: userPersonalDetails.physically_disabled
                ? 1
                : 2,
              user_role: user_roles.length ? user_roles : userRole, /////////////////////////////////////
              user_Contact: userContact,
            };
            response.type = {};
            response.selected_role = {};
            let queryOptions = {};
            let cio = (cio_name = null);

            if (
              selectedRole.type == "institute" &&
              selectedRole.name == "Student"
            ) {
              let student = await StudentEnrollment.findOne({
                where: {
                  user_id: req.user.id,
                },
              });
              let institute = await InstituteProgramme.findOne({
                attributes: ["institute_id"],
                where: {
                  id: student.institute_programme_id,
                },
                include: [
                  {
                    model: Institute,
                    attributes: ["name"],
                  },
                ],
              });
              if (student) {
                response.student_enrollment_id = student.id;
                cio_name = institute.Institute.name;
              }
              response.type = institute;
            } else if (
              selectedRole.type == "dept" ||
              selectedRole.type == "company" ||
              selectedRole.type == "institute" ||
              selectedRole.type == "service"
            ) {
              queryOptions = {
                where: {
                  user_id: req.user.id,
                },
                attributes: ["cio_id"],
              };

              if (selectedRole.type == "dept") {
                queryOptions.include = [Department];
              } else if (selectedRole.type == "company") {
                queryOptions.include = [Company];
              } else if (
                selectedRole.type == "institute" &&
                selectedRole.name != "Student"
              ) {
                queryOptions.include = [Institute];
              } else if (selectedRole.type == "service") {
                queryOptions.include = [Service];
              }

              cio = await EntityUser.findOne(queryOptions);

              cio_name =
                selectedRole.type == "dept"
                  ? cio.Department.name
                  : selectedRole.type == "company"
                  ? cio.Company.name
                  : selectedRole.type == "institute" &&
                    ur.Role.name != "Student"
                  ? cio.Institute.name
                  : selectedRole.type == "service"
                  ? cio.Service.name
                  : null;
              response.type = cio;
            }

            response.selected_role = {
              id: selectedRole.id,
              name: selectedRole.name,
              type: selectedRole.type,
              cio_name: cio_name,
            };

            res
              .status(200)
              .json(success("User Details fetched successfully", response));
          });
        })
        .catch((error) => {
          res.status(400).json(errorResponse(error, 400));
        });
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.register = async function (req, res) {  
  // const result = await sequelize.transaction(async (t) => {
  var salt = bcrypt.genSaltSync(10);
  var hash = bcrypt.hashSync(req.body.password, salt);

  Role.findOne(
    { attributes: ["id", "name"] },
    {
      where: {
        id: req.body.role_id,
      },
    }
  )
    .then((role) => {
      console.log(role);
      User.create({
        username: req.body.username,
        password: hash,
        phone: req.body.phone,
        email: req.body.email,
        status: "REG",
      })
        .then((user) => {
          //save user id and college id in students and staff table
          UserRole.create({
            user_id: user.id,
            role_id: req.body.role_id,
            preferred_role: true,
          })
            .then((userRole) => {
              UserPersonalDetails.create({
                user_id: userRole.user_id,
                firstname: req.body.firstname,
                lastname: req.body.lastname,
                phone: req.body.phone,
                email: req.body.email,
              })
                .then((userpersonaldetails) => {
                  UserContact.create({
                    user_id: user.id,
                  }).then((userContact) => {
                    //check if student
                    if (req.body.role_id == 7) {
                      console.log(
                        "inside studenntttttttttttttttttttttttttttttt"
                      );
                      InstituteProgramme.findOne({
                        attributes: ["id"],
                        where: {
                          institute_id: req.body.institute_id,
                          programme_id: req.body.programme_id,
                        },
                      })
                        .then((instprog) => {
                          console.log("instprog", instprog);
                          console.log("instprog", instprog.id);
                          StudentEnrollment.create({
                            user_id: user.id,
                            institute_programme_id: instprog.id,
                            current_class: req.body.class,
                            subject_id: req.body.subject_id,
                          })
                            .then((studentEnrollment) => {
                              const template =
                              "Hello " + req.body.firstname +  "! Your application has been successfully submitted on SUGAM Portal! " + 
                              "Your profile is pending for verification.-Directorate of Higher Education.";

                              var responseSMS = SMSNotification(req.body.phone, template);

                              var response =
                                notificationController.createNotification(
                                  49,
                                  userRole.id,
                                  "Registration",
                                  "Your Resgistration has been created Successfully! "
                                );
                              console.log(response);
                              res
                                .status(200)
                                .json(
                                  success("Student-User created successfully")
                                );
                            })
                            .catch((error) => {
                              res.status(400).json(errorResponse(error, 400));
                            });
                        })
                        .catch((error) => {
                          res.status(400).json(errorResponse("InstProg", 400));
                        });
                    }
                    //check if staff or non-teaching
                    else if (req.body.role_id == 6 || req.body.role_id == 2) {
                      Staff.create({
                        user_id: user.id,
                      }).then((staff) => {
                        if (
                          req.body.institute_type_id == null &&
                          req.body.institute_id == null
                        ) {
                          res
                            .status(400)
                            .json(
                              errorResponse(
                                "Select valid Institute and programme!",
                                400
                              )
                            );
                        }
                        InstituteStaff.create({
                          institute_id: req.body.institute_id,
                          staff_id: staff.id,
                          role_id: req.body.role_id,
                          institute_type_id: req.body.institute_type_id,
                        })
                          .then((instituteStaff) => {
                            UserDesignation.create({
                              user_id: user.id,
                              employementtype_id: req.body.employment_type_id,
                              designation_id: req.body.designation_id,
                            })
                              .then((userDes) => {
                                //put data in Entity User table
                                const staffData = {
                                  user_id: user.id,
                                  entity_type_id: 1,
                                  cio_id: req.body.institute_id,
                                  active: req.body.active ? req.body.active : true,
                                };

                                //console.log(companyHRData);
                                EntityUser.create(staffData)
                                  .then((staff) => {
                                    const template =
                                    "Hello " + req.body.firstname +  "! Your application has been successfully submitted on SUGAM Portal! " + 
                                    "Your profile is pending for verification.-Directorate of Higher Education.";

                                    var responseSMS = SMSNotification(req.body.phone, template);

                                    var response =
                                      notificationController.createNotification(
                                        49,
                                        userRole.id,
                                        "Registration",
                                        "Your Resgistration has been created Successfully! "
                                      );

                                    res
                                    .status(200)
                                    .json(
                                      success("Staff-User created successfully")
                                    );
                                  });                               
                              })
                              .catch((error) => {
                                res
                                  .status(400)
                                  .json(errorResponse("userdes here", 400));
                              });
                          })
                          .catch((error) => {
                            console.log(error);
                            res
                              .status(400)
                              .json(errorResponse("institutestaff", 400));
                          });
                      });
                    } else if (req.body.role_id == 12) {
                      //Company admin
                      console.log("In company create", req.body);

                      const companyData = {
                        organization_type_id: req.body.organization_type_id,
                        user_id: user.id,
                        owner_type_id: req.body.owner_type_id,
                        owner_id: req.body.owner_id,
                        name: req.body.name,
                        logo: req.body.logo,
                        website: req.body.website,
                        description: req.body.description,
                        state_id: req.body.state_id,
                        district_id: req.body.district_id,
                        taluka_id: req.body.taluka_id,
                        village: req.body.village,
                        country_id: req.body.country_id,
                        landmark: req.body.landmark,
                        street: req.body.street,
                        pincode: req.body.pincode,
                        phone: req.body.phone,
                        email: req.body.email,
                        // reg_no: req.body.reg_no,
                        reg_certificate: "", //req.certificate.originalname,
                        verified: req.body.verified ? req.body.verified : false,
                        active: req.body.active ? req.body.active : true,
                        description: req.body.description,
                        createdAt: "",
                        updateAt: null,
                        deletedAt: null,
                      };

                      Company.create(companyData)
                        .then((company) => {
                          const companyHRData = {
                            user_id: user.id,
                            entity_type_id: 2,
                            cio_id: company.id,
                            active: req.body.active ? req.body.active : true,
                          };

                          //console.log(companyHRData);
                          EntityUser.create(companyHRData)
                            .then((HR) => {
                              //send mobile OTP
                              const template =
                              "Hello " + req.body.name +  "! Your application has been successfully submitted on SUGAM Portal! " + 
                              "Your profile is pending for verification.-Directorate of Higher Education.";

                              var responseSMS = SMSNotification(req.body.phone, template);

                              var response =
                                notificationController.createNotification(
                                  49,
                                  userRole.id,
                                  "Registration",
                                  "Your Resgistration has been created Successfully! "
                                );
                              //send Email OTP

                              res
                                .status(200)
                                .json(
                                  success("Company Admin created successfully")
                                );
                            })
                            .catch((error) => {
                              res.status(400).json(errorResponse(error, 400));
                            });
                        })
                        .catch((error) => {
                          res.status(400).json(errorResponse(error, 400));
                        });
                    } else if (
                      req.body.role_id == 10 ||
                      req.body.role_id == 11
                    ) {
                      //Company HR or Guide
                      console.log("In company HR/Guide create");
                      user.status = "VER";
                      user.is_verified = true;
                      user.save();

                      const companyHRData = {
                        user_id: user.id,
                        entity_type_id: req.body.entity_type_id,
                        cio_id: req.body.cio_id,
                        active: req.body.active ? req.body.active : true,
                      };

                      //console.log(companyHRData);

                      EntityUser.create(companyHRData)
                        .then((HR) => {
                          //send mobile OTP

                          //send Email OTP

                          res
                            .status(200)
                            .json(
                              success("Company HR/Guide created successfully")
                            );
                        })
                        .catch((error) => {
                          res.status(400).json(errorResponse(error, 400));
                        });
                    }
                  });
                })
                // }) //transaction close
                .catch((error) => {
                  res.status(400).json(errorResponse("here", 400));
                });
            })
            .catch((error) => {
              res.status(400).json(errorResponse(error, 400));
            });
        })
        .catch((error) => {
          res.status(400).json(errorResponse(error, 400));
        });
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.registerAdmins = function (req, res) {
  //only user with role id ....... can create admins

  const email = req.body.email;
  const phone = req.body.phone;

  var userCredentialsdata;
  userCredentialsdata = userCredentials(email, phone);
  //console.log("Username:",userCredentialsdata.username);
  console.log("Password:", userCredentialsdata.password);

  var salt = bcrypt.genSaltSync(10);
  var hash = bcrypt.hashSync(userCredentialsdata.password.toString(), salt);

  User.create({
    username: userCredentialsdata.username,
    password: hash,
    phone: req.body.phone,
    email: req.body.email,
    status: "VER",
    is_verified: true,
  }).then((user) => {
    //save superAdmin Role
    UserRole.create({
      user_id: user.id,
      role_id: req.body.role_id,
      preferred_role: true,
      is_active: true,
    })
      .then((userRole) => {
        //Save SuperAdmin Personal Details
        UserPersonalDetails.create({
          user_id: userRole.user_id,
          firstname: req.body.firstname,
          lastname: req.body.lastname,
          phone: req.body.phone,
          email: req.body.email,
        })
          .then((UserPersonalDetails) => {
            UserDesignation.create({
              user_id: userRole.user_id,
              designation_id: req.body.designation_id,
              employementtype_id: req.body.employementtype_id,
            })
              .then((UserDesignation) => {
                EntityUser.create({
                  user_id: userRole.user_id,
                  entity_type_id: req.body.entity_type_id,
                  cio_id: req.body.cio_id,
                })
                  .then(async (EntityUser) => {
                    console.log("call email Notification function");
                    var from = process.env.EMAIL_FROM;
                    var subject = "User Credentials";
                    var template = "welcome";
                    var response;

                    response = await EmailNotification(
                      from,
                      req.body.email,
                      subject,
                      template,
                      req.body.firstname,
                      userCredentialsdata.username,
                      userCredentialsdata.password,
                      ""
                    );
                    if (response) {
                      res
                        .status(200)
                        .json(
                          success("User Credentials forwarded successfully")
                        );
                    } else {
                      res
                        .status(400)
                        .json(
                          errorResponse(
                            "Failed to Forwarded User Credentials",
                            400
                          )
                        );
                    }
                  })
                  .catch((error) => {
                    res
                      .status(400)
                      .json(errorResponse("Failed to save Entity User", 400));
                  });
              })
              .catch((error) => {
                console.log(
                  "*********************************************************************"
                );
                console.log(
                  "errrrooorrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrris: ",
                  error
                );
                res
                  .status(400)
                  .json(errorResponse("Failed to save Admin Designation", 400));
              });
          })
          .catch((error) => {
            res
              .status(400)
              .json(errorResponse("Failed to add Admin Personal Details", 400));
          });
      })
      .catch((error) => {
        res.status(400).json(errorResponse("Failed to Add Admin Role", 400));
      });
  });
};

exports.registerSuperadmin = function (req, res) {
  console.log(req.body);
  const email = req.body.email;
  const phone = req.body.phone;

  var userCredentialsdata;
  userCredentialsdata = userCredentials(email, phone);
  //console.log("Username:",userCredentialsdata.username);
  //console.log("Password:",userCredentialsdata.password)

  var salt = bcrypt.genSaltSync(10);
  var hash = bcrypt.hashSync(userCredentialsdata.password, salt);
  User.create({
    username: userCredentialsdata.username,
    password: hash,
    phone: req.body.phone,
    email: req.body.email,
    status: "VER",
    is_verified: true,
  })
    .then((user) => {
      //save superAdmin Role
      UserRole.create({
        user_id: user.id,
        role_id: req.body.role_id,
        preferred_role: true,
        is_active: true,
      })
        .then((userRole) => {
          //Save SuperAdmin Personal Details
          UserPersonalDetails.create({
            user_id: userRole.user_id,
            firstname: req.body.firstname,
            lastname: req.body.lastname,
            phone: req.body.phone,
            email: req.body.email,
          })
            .then(async (SuperAdminCreation) => {
              //Send Email
              console.log("call email Notification function");
              var from = process.env.EMAIL_FROM;
              var subject = "User Credentials";
              var template = "welcome";
              var response;

              response = await EmailNotification(
                from,
                req.body.email,
                subject,
                template,
                req.body.firstname,
                userCredentialsdata.username,
                userCredentialsdata.password,
                ""
              );
              if (response) {
                res
                  .status(200)
                  .json(success("User Credentials forwarded successfully"));
              } else {
                res
                  .status(400)
                  .json(
                    errorResponse("Failed to Forwarded User Credentials", 400)
                  );
              }
              //res.status(200).json(success("SuperAdmin Personal Details added successfully"))
            })
            .catch((error) => {
              res
                .status(400)
                .json(
                  errorResponse(
                    "Failed to add SuperAdmin Personal Details",
                    400
                  )
                );
            });
        })
        .catch((error) => {
          res
            .status(400)
            .json(errorResponse("Failed to Add SuperAdmin Role", 400));
        });
    })
    .catch((error) => {
      res.status(400).json(errorResponse("Failed to Create SuperAdmin", 400));
    });
};

exports.login = function (req, res) {
  User.findOne({
    where: {
      [Op.or]: [
        { username: req.body.username },
        { phone: req.body.username },
        { email: req.body.username },
      ],
    },
  })
    .then((user) => {
      // if(user){
      console.log(user);
      UserRole.findOne({
        where: {
          user_id: user.id,
          preferred_role: true,
        },
      })
        .then((role) => {
          console.log(role);
          tokendata = {
            username: user.username,
            userId: user.id,
            userRole: role.role_id,
          };
          if (!user) {
            res
              .status(400)
              .json(
                errorResponse("User Not found! Please register first", 400)
              );
          }
          const result = bcrypt.compareSync(req.body.password, user.password);

          if (result) {
            // var refreshToken = jwt.sign(
            //   JSON.parse(JSON.stringify(tokendata)),
            //   process.env.REFRESH_TOKEN_SECRET,
            //   {
            //     expiresIn: process.env.REFRESH_TOKEN_LIFE,
            //   }
            // );

            var token = jwt.sign(
              JSON.parse(JSON.stringify(tokendata)),
              process.env.JWT_SECRET,
              {
                expiresIn: 120000,
              }
            );
            // jwt.verify(token, process.env.JWT_SECRET, function (err, data) {
            //   // console.log(err, data);
            // });
            // const response = {
            //   "token": token,
            //   "refreshToken": refreshToken
            // }
            // tokenList[refreshToken] = response;
            res
              .status(200)
              .json(success("User logged in successfully!", token));
          } else {
            res
              .status(400)
              .json(errorResponse("Please check your password", 400));
          }
        })
        .catch((error) => {
          console.log(
            "errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrorrrrrrrrrrrrrrrrrrrrr",
            error
          );
          res.status(400).json(errorResponse(error, 400));
        });
    })
    .catch((error) => {
      console.log(
        "hhheeeaaarrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrorrrrrrrrrrrrrrrrrrrrr",
        error
      );
      res.status(400).json(errorResponse(error, 400));
    });
};

//update profile
exports.updateProfile = async function (req, res) {
  console.log("hey there", req.body);

  await User.update(
    { status: "RESUB", is_verified: false },
    { where: { id: req.user.id } }
  );

  await UserPersonalDetails.update(req.body, {
    where: { user_id: req.user.id },
  })
    .then((updated) => {
      UserContact.update(req.body, {
        where: { user_id: req.user.id },
      }).then((response) => {
        if (response == 1) {
          res.send({
            message: "User profile was updated successfully.",
          });
        } else {
          res.send({
            message: "Could not update User profile!",
          });
        }
      });
    })
    .catch((error) => {
      console.log(error);
      res.status(400).json(errorResponse("Please check your details!", 400));
    });
};

//update profile
exports.updateAcademics = async function (req, res) {
  await User.update(
    { status: "RESUB", is_verified: false },
    { where: { user_id: req.user.id } }
  );

  StudentEnrollment.findOne({
    attributes: ["id"],
    where: { id: req.user.id },
  })
    .then((student) => {
      StudentMarks.update(req.body, {
        where: { id: student.id },
      }).then((response) => {
        if (response == 1) {
          res.send({
            message: "User Academics was updated successfully.",
          });
        } else {
          res.send({
            message: "Could not update User profile!",
          });
        }
      });
    })
    .catch((error) => {
      res.status(400).json(errorResponse("Please check your details!", 400));
    });
};

//updatePassword
exports.updatePassword = function (req, res) {
  User.findOne({
    where: { id: req.user.id },
  })
    .then((user) => {
      var salt = bcrypt.genSaltSync(10);
      user.password = bcrypt.hashSync(req.body.password, salt);
      user.save();

      res.status(200).json(success("User Password updated successfully!"));
    })
    .catch((error) => {
      res
        .status(400)
        .json(errorResponse("User Password not changed successsfully!", 400));
    });
};

//forgotPassword
exports.forgotPassword = function (req, res) {
  User.findOne({
    where: { email: req.body.email },
  })
    .then((user) => {
      if (user) {
        var salt = bcrypt.genSaltSync(10);
        user.password = bcrypt.hashSync(req.body.password, salt);
        user.save();

        res.status(200).json(success("User Password updated successfully!"));
      } else {
        res.status(400).json(errorResponse("User Not Found!", 400));
      }
    })
    .catch((error) => {
      res
        .status(400)
        .json(errorResponse("User Password not changed successsfully!", 400));
    });
};

//to be changed not yet complete
exports.addStatus = async function (req, res) {
  //get info of who's verifying
  User.findOne({
    where: { id: req.user.id },
  })
    .then(async (user) => {
      let ur = await UserRole.findOne({
        where: {
          user_id: req.user.id,
          role_id: req.user.role_id,
        },
      });
      user.is_verified = req.body.is_verified;
      user.status = req.body.status;
      user.verified_by = ur.id;
      user.save();

      //update remarks table
      let studentEntrollmentData = await StudentEnrollment.findOne({
        where: {
          user_id: req.body.user_id,
        },
      });

      let studentRemarks = await StudentRemarks.update(
        { is_active: true },
        { where: { student_enrollment_id: studentEntrollmentData.id } }
      );

      res.status(200).json(success("User Status updated successfully!"));
    })
    .catch((error) => {
      console.log(error);
      res.status(400).json(errorResponse("Could not Chnage the status!", 400));
    });
};

//switch the user role
exports.switchUserRole = function (req, res) {
  tokendata = {
    username: req.user.username,
    userId: req.user.id,
    userRole: req.body.role_id,
  };
  var token = jwt.sign(
    JSON.parse(JSON.stringify(tokendata)),
    process.env.JWT_SECRET,
    {
      expiresIn: 1200,
    }
  );
  res.status(200).json(success("User role switched successfully!", token));
};

//refresh the token
exports.refreshToken = function (req, res) {
  User.findOne({
    where: {
      id: req.body.user_id,
    },
  }).then((user) => {
    // refresh the damn token
    UserRole.findOne({
      where: {
        user_id: user.id,
      },
    })
      .then((role) => {
        const postData = req.body;
        // if refresh token exists
        if (postData.refresh_token && postData.refresh_token in tokenList) {
          console.log("inside here");
          const tokendata = {
            username: user.username,
            userId: user.id,
            userRole: role.role_id,
          };
          const token = jwt.sign(tokendata, process.env.JWT_SECRET, {
            expiresIn: process.env.TOKEN_LIFE,
          });
          // const response = {
          //     "token": token,
          // }
          // update the token in the list
          console.log("inside reached on top here");
          tokenList[postData.refresh_token].token = token;
          console.log("inside reached here");
          res
            .status(200)
            .json(success("User Role changed successfully!", token));
        } else {
          console.log("inside else");
          res.status(404).json(success("User Not found!"));
        }
      })
      .catch((error) => {
        res.status(400).json(errorResponse(error, 400));
      });
  });
};

//is_verified status
exports.getUserStatus = function (req, res) {
  User.findOne({
    attributes: ["is_verified", "status", "is_signed"],
    where: {
      id: req.user.id,
    },
  })
    .then((user) => {
      res.status(200).json(success("User Status fetched successfully!", user));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

//sign Undertaking status
exports.signUndertaking = async function (req, res) {
  console.log("body jfdvjdfjvbdjnbjnndfjbnjdf", req.body);
  await User.findOne({
    where: {
      id: req.user.id,
    },
  })
    .then(async (user) => {
      let userRole = await UserRole.findOne({
        where: {
          user_id: req.user.id,
          role_id: req.user.role_id,
        },
      });

      console.log(req.body);
      user.is_signed = req.body.undertaking;
      user.status = "SUB";
      user.save();

      const template = "Hello " + req.body.firstname +  "! Your application has been reverted back! " + 
      "Please make the appropriate changes and re-submit the application - Directorate of Higher Education";

      var responseSMS = SMSNotification(req.body.phone, template);

      var response =
        notificationController.createNotification(
          49,
          userRole.id,
          "Registration",
          "Your Resgistration has been created Successfully! "
        );

      res.status(200).json(success("User Status updated successfully!", user));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

//test notif
exports.createNotification = async function (req, res) {
  try {
    let userRole = await UserRole.findOne({
      where: {
        user_id: req.user.id,
        role_id: req.user.role_id,
      },
    });
    var response = notificationController.createNotification(
      request.body.from_userrole,
      userRole.id,
      req.body.subject,
      req.body.message
    );
    console.log("response notification is: ", response);
    res
      .status(200)
      .json(success("Notification created successfully!!", response));
  } catch (error) {
    console.log("Error-response notification is: ", error);
  }
};

//Check if undertaking is signed (with token)
exports.checkIfUndertakingSigned = async function (req, res) {
  await User.findOne({
    where: {
      id: req.user.id,
    },
  })
    .then((user) => {
      let message = "";
      user.is_signed
        ? (message = "Undertaking Signed successfully!")
        : (message = "Please sign the undertaking!");

      res.status(200).json(success(message, user.is_signed));
    })
    .catch((error) => {
      console.log("Error in checking the status of undertaking", error);
    });
};


// verfify/rejected or student profile mark incomplete
exports.verifyStudent = async (req, res) => {
  const id = req.body.user_id;
  let is_verified = false;
  let status = "";

  // if (JSON.stringify(data).includes(req.body.is_verified)) {
  //   for (key in data.statuses) {
  //     if (req.body.is_verified == key) {
  //       status = data.statuses[key];
  //     }
  //   }
  // }
  let ur = await UserRole.findOne({
    where: {
      user_id: req.user.id,
      role_id: req.user.role_id,
    },
  });

  req.body.status == "VER"
    ? (is_verified = true)
    : (is_verified = false);
  const template = message = "";
  if(req.body.status == "VER"){
      template = "Hello " + req.body.firstname +  "! Your account has been successfully verified on SUGAM Portal!" +
    " You can log in and access the services at our website https://www.sugam.gshec.edu.in - Directorate of Higher Education";
    
      message = "Your account has been successfully Verified!";
  }else if(req.body.status == "REJ"){
      template = "Hello " + req.body.firstname +  "! Your application has been declined! Please contact the appropriate authority for any queries - Directorate of Higher Education";
      message = "Your application has been declined!";
  }else if(req.body.status == "INC"){
      template = "Hello " + req.body.firstname +  "! Your application has been marked as incomplete! " + 
    "Please make the appropriate changes and re-submit the application - Directorate of Higher Education";
      message = "Your application has been reverted back!";
  }

  var responseSMS = SMSNotification(req.body.phone, template);

  var response =
    notificationController.createNotification(
      49,
      ur.id,
      "Profile status",
      message
    );
    
  const updatefields = {
    is_verified: is_verified,
    status: req.body.status,
    verified_by: ur.id
  };

  User.update(updatefields, {
    where: { id: id },
  })
    .then((num) => {
      if (num == 1) {
        return res
          .status(200)
          .json(success("Status updated successfully!"));
      } else {
        return res
          .status(400)
          .json(
            errorResponse(
              `Cannot update Status!`,
              400
            )
          );
      }
    })
    .catch((err) => {
      return res
        .status(400)
        .json(
          errorResponse(
            `Cannot update Status!`,
            400
          )
        );
    });
};