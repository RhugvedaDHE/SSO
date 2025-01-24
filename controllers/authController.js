const jwt = require("jsonwebtoken");
require("dotenv").config();
const bcrypt = require("bcryptjs");

const notificationController = require("../controllers/notificationController");
const User = require("../models").User;
const UserRole = require("../models").UserRole;
const UserContact = require("../models").UserContact;
const Staff = require("../models").Staff;
const Role = require("../models").Role;
const Taluka = require("../models").Taluka;
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
const Session = require("../models").Session;
const tokenList = {};
const CryptoJS = require("crypto-js");
const axios = require("axios");
const moment = require("moment-timezone");
// Define the timezone
const timezone = "Asia/Kolkata";

const Sequelize = require("sequelize");
const sequelize = require("../models").sequelize;
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
  let queryOptions = {};
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

              let institute = await Institute.findOne({
                where: {
                  id: student.institute_id,
                },
              });

              cio_name_ur = institute.name;
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
                model: Taluka,
                attributes: ["name"],
                where: {
                  id: {
                    [Op.ne]: null, // Only include if semester_id is not zero
                  },
                },
              },
              {
                model: State,
                attributes: ["name"],
                where: {
                  id: {
                    [Op.ne]: null, // Only include if semester_id is not zero
                  },
                },
              },
              {
                model: District,
                attributes: ["name"],
                where: {
                  id: {
                    [Op.ne]: null, // Only include if semester_id is not zero
                  },
                },
              },
              {
                model: Country,
                attributes: ["name"],
                where: {
                  id: {
                    [Op.ne]: null, // Only include if semester_id is not zero
                  },
                },
              },
            ],
          }).then(async (userContact) => {
            let selectedRole = await Role.findOne({
              attributes: ["id", "name", "type"],
              where: {
                id: req.user.role_id,
              },
            });
            console.log("USERDETAILS", userPersonalDetails);
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
            let institute;
            if (
              selectedRole.type == "institute" &&
              selectedRole.name == "Student"
            ) {
              let student = await StudentEnrollment.findOne({
                where: {
                  user_id: req.user.id,
                  is_active: 1,
                },
              });
              institute = await Institute.findOne({
                attributes: ["id", "name"],
                where: {
                  id: student.institute_id,
                },
              });
              if (student) {
                response.student_enrollment_id = student.id;
                cio_name = institute.name;
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
            } //else closed

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
  const t = await sequelize.transaction();
  try {
    // Hash password
    const salt = bcrypt.genSaltSync(10);
    const hash = bcrypt.hashSync(
      CryptoJS.AES.decrypt(
        req.body.password,
        process.env.CRYPTOJS_SECRET
      ).toString(CryptoJS.enc.Utf8),
      salt
    );

    // Find role
    const role = await Role.findOne(
      { attributes: ["id", "name"] },
      { where: { id: req.body.role_id } }
    );
    if (!role) {
      throw new Error("Role not found");
    }

    // Create user
    const user = await User.create(
      {
        username: req.body.username,
        password: hash,
        phone: req.body.phone,
        email: req.body.email,
        status: "VER",
      },
      { transaction: t }
    );

    // Assign role to the user
    const userRole = await UserRole.create(
      {
        user_id: user.id,
        role_id: req.body.role_id,
        preferred_role: true,
      },
      { transaction: t }
    );

    // Create user personal details
    await UserPersonalDetails.create(
      {
        user_id: userRole.user_id,
        firstname: req.body.firstname,
        lastname: req.body.lastname,
        phone: req.body.phone,
        email: req.body.email,
      },
      { transaction: t }
    );

    // Create user contact
    await UserContact.create({ user_id: user.id }, { transaction: t });

    // Check if role is student (role_id == 7)
    if (req.body.role_id == 7) {
      // const instprog = await InstituteProgramme.findOne({
      //   attributes: ["id"],
      //   where: {
      //     institute_id: req.body.institute_id,
      //     programme_id: req.body.programme_id,
      //   },
      //   transaction: t,
      // });

      // if (!instprog) {
      //   throw new Error("Institute Programme not found");
      // }

      // Create student enrollment
      await StudentEnrollment.create(
        {
          user_id: user.id,
          institute_id: req.body.institute_id,
          programme_id: req.body.programme_id,
          current_class_id: req.body.class,
          current_semester_id: null,
          subject_id: null,
        },
        { transaction: t }
      );

      // Send SMS notification
      // const template = `Hello ${req.body.firstname}! Your application has been successfully submitted on the SUGAM Portal! Your profile is pending verification. -Directorate of Higher Education.`;
      let template = `Hello ${req.body.firstname}! Your account has been successfully created! You can login and access various services on SUGAM portal - Directorate of Higher Education  `;
      SMSNotification(req.body.phone, template);

      // Create notification
      await notificationController.createNotification(
        49,
        userRole.id,
        "Registration",
        "Your Registration has been created Successfully!"
      );

      //send Email
      await EmailNotification(
        process.env.EMAIL_FROM,
        req.body.email,
        "Successful registraion",
        "register",
        "",
        "",
        "",
        ""
      );

      res.status(200).json(success("Student-User created successfully"));
    }
    // Check if role is staff or non-teaching (role_id == 6 or role_id == 2)
    else if (req.body.role_id == 6 || req.body.role_id == 2) {
      const staff = await Staff.create(
        { user_id: user.id },
        { transaction: t }
      );

      if (!req.body.institute_type_id || !req.body.institute_id) {
        throw new Error("Select valid Institute and programme!");
      }

      const instituteStaff = await InstituteStaff.create(
        {
          institute_id: req.body.institute_id,
          staff_id: staff.id,
          role_id: req.body.role_id,
          institute_type_id: req.body.institute_type_id,
        },
        { transaction: t }
      );

      await UserDesignation.create(
        {
          user_id: user.id,
          employementtype_id: req.body.employment_type_id,
          designation_id: req.body.designation_id,
        },
        { transaction: t }
      );

      const staffData = {
        user_id: user.id,
        entity_type_id: 1,
        cio_id: req.body.institute_id,
        active: req.body.active || true,
      };

      await EntityUser.create(staffData, { transaction: t });

      const template = `Hello ${req.body.firstname}! Your account has been successfully created! You can login and access various services on SUGAM portal - Directorate of Higher Education  `;

      SMSNotification(req.body.phone, template);

      await notificationController.createNotification(
        49,
        userRole.id,
        "Registration",
        "Your Registration has been created Successfully!"
      );

      res.status(200).json(success("Staff-User created successfully"));
    }

    // Commit the transaction if everything succeeds
    await t.commit();
  } catch (error) {
    // Rollback the transaction in case of an error
    await t.rollback();

    console.error(error);
    res.status(400).json(errorResponse(error.errors[0].message, 400));
  }
};

exports.registerHSStudent = async function (req, res) {
  // const result = await sequelize.transaction(async (t) => {
  var salt = bcrypt.genSaltSync(10);
  const hash = bcrypt.hashSync(
    CryptoJS.AES.decrypt(
      req.body.password,
      process.env.CRYPTOJS_SECRET
    ).toString(CryptoJS.enc.Utf8),
    salt
  );

  Role.findOne(
    { attributes: ["id", "name"] },
    {
      where: {
        id: req.body.role_id,
      },
    }
  ).then(async (role) => {
    console.log(role);
    User.create({
      username: req.body.username,
      password: hash,
      phone: req.body.phone,
      email: req.body.email,
      status: "REG",
    }).then((user) => {
      //save user id and college id in students and staff table
      UserRole.create({
        user_id: user.id,
        role_id: req.body.role_id,
        preferred_role: true,
      }).then((userRole) => {
        UserPersonalDetails.create({
          user_id: userRole.user_id,
          firstname: req.body.firstname,
          lastname: req.body.lastname,
          phone: req.body.phone,
          email: req.body.email,
        }).then((userpersonaldetails) => {
          UserContact.create({
            user_id: user.id,
          }).then((userContact) => {
            //check if student

            StudentEnrollment.create({
              user_id: user.id,
              institute_id: req.body.institute_id,
              programme_id: req.body.programme_id,
              current_class_id: req.body.class,
              current_semester_id: null,
              subject_id: null,
              stream_id: req.body.stream_id,
            })
              .then(async (studentEnrollment) => {
                const template = `Hello ${req.body.firstname}! Your account has been successfully created! You can login and access various services on SUGAM portal - Directorate of Higher Education  `;

                var responseSMS = SMSNotification(req.body.phone, template);

                var response = notificationController.createNotification(
                  49,
                  userRole.id,
                  "Registration",
                  "Your Resgistration has been created Successfully! "
                );

                //send Email
                await EmailNotification(
                  process.env.EMAIL_FROM,
                  req.body.email,
                  "Successful registraion",
                  "register",
                  "",
                  "",
                  "",
                  ""
                );
                console.log(response);
                res
                  .status(200)
                  .json(success("Student-User created successfully"));
              })
              .catch((error) => {
                res.status(400).json(errorResponse(error, 400));
              });
          });
        });
      });
    });
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
                    res.status(400).json(errorResponse(error, 400));
                  });
              })
              .catch((error) => {
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
  let existing = false;

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
        .then(async (role) => {
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
                errorResponse(
                  { username: "User Not found! Please register first" },
                  400
                )
              );
          }

          //decrypt sent encrypted password
          // Hash password
          const decryptedPassword = CryptoJS.AES.decrypt(
            req.body.password,
            process.env.CRYPTOJS_SECRET
          ).toString(CryptoJS.enc.Utf8);

          const result = bcrypt.compareSync(decryptedPassword, user.password);

          if (result) {
            // Step 2: Check if an existing session exists for this user
            
            const existingSession = await Session.findOne({
              where: { user_id: user.id },
            });
            if (existingSession) {
              // Invalidate or delete the existing session (log the user out from previous session)
              await Session.destroy({ where: { user_id: user.id } });
              existing = true;
            }

            var token = jwt.sign(
              JSON.parse(JSON.stringify(tokendata)),
              process.env.JWT_SECRET,
              {
                expiresIn: "15m", //10s 4m
              }
            );

            // Generate Refresh Token
            const refreshToken = jwt.sign(
              JSON.parse(JSON.stringify(tokendata)),
              process.env.REFRESH_TOKEN_SECRET,
              {
                expiresIn: "7d", // Longer-lived
              }
            );
            const expiresAt = moment()
              .tz(timezone)
              // .add(15, "minute") // Add 1 hour
              .add(15, "minute") // Add 5 minute
              .toDate(); // Convert to JavaScript Date object

            // Save session in database
            // const expiresAt = new Date(Date.now() + 60 * 60 * 1000); // 1 hour
            // const expiresAt = new Date(Date.now() + 180 * 1000); // 10 s //2m
            await Session.create({
              user_id: user.id,
              token,
              expires_at: expiresAt,
              refresh_token: refreshToken,
            });

            let message = "";
            existing ? message = "The previous session has been logged out!" : message = "User logged in successfully!" ;
            res.status(200).json(
              success(message, {
                token: token,
                refreshToken: refreshToken,
              })
            );
          } else {
            res
              .status(400)
              .json(
                errorResponse({ password: "Please check your password" }, 400)
              );
          }
        })
        .catch((error) => {
          console.log("erorrrrrrrrrrrrrrrrrrrrr", error);
          res.status(400).json(errorResponse(error, 400));
        });
    })
    .catch((error) => {
      console.log(
        "hhheeeaaarrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrorrrrrrrrrrrrrrrrrrrrr",
        error
      );
      res
        .status(400)
        .json(
          errorResponse(
            { username: "User Not found! Please register first" },
            400
          )
        );
    });
};

//update profile
exports.updateProfile = async function (req, res) {
  await User.update(
    { status: "RESUB", is_verified: false },
    { where: { id: req.user.id } }
  );

  let aadhar_count = await UserPersonalDetails.findAll({
    where: {
      aadhar: req.body.aadhar,
    },
  });

  if (aadhar_count.length > 1) {
    res.status(400).json(errorResponse("Aadhar number already exists!", 400));
  }
  await UserPersonalDetails.update(req.body, {
    where: { user_id: req.user.id },
  })
    .then((updated) => {
      UserContact.update(req.body, {
        where: { user_id: req.user.id },
      }).then((response) => {
        if (response == 1) {
          return res
            .status(200)
            .json(success("User profile was updated successfully!"));
        } else {
          return res.status(400).json(errorResponse("Could not update!", 400));
        }
      });
    })
    .catch((error) => {
      console.log(error);
      res.status(400).json(errorResponse(error.errors[0].message, 400));
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
      if (user) {
        var salt = bcrypt.genSaltSync(10);
        user.password = bcrypt.hashSync(
          CryptoJS.AES.decrypt(
            req.body.password,
            process.env.CRYPTOJS_SECRET
          ).toString(CryptoJS.enc.Utf8),
          salt
        );
        user.save();

        res.status(200).json(success("User Password updated successfully!"));
      } else {
        res
          .status(400)
          .json(
            errorResponse(
              { username: "User Not found! Please register first" },
              400
            )
          );
      }
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
        user.password = bcrypt.hashSync(
          CryptoJS.AES.decrypt(
            req.body.password,
            process.env.CRYPTOJS_SECRET
          ).toString(CryptoJS.enc.Utf8),
          salt
        );
        user.save();

        res.status(200).json(success("User Password updated successfully!"));
      } else {
        res
          .status(400)
          .json(
            errorResponse(
              { username: "User Not found! Please register first" },
              400
            )
          );
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
          user_id: req.user.id,
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
exports.switchUserRole = async function (req, res) {
  tokendata = {
    username: req.user.username,
    userId: req.user.id,
    userRole: req.body.role_id,
  };
  
  var token = jwt.sign(
    JSON.parse(JSON.stringify(tokendata)),
    process.env.JWT_SECRET,
    {
      expiresIn: "15m", //10s 4m
    }
  );

  // Generate Refresh Token
  const refreshToken = jwt.sign(
    JSON.parse(JSON.stringify(tokendata)),
    process.env.REFRESH_TOKEN_SECRET,
    {
      expiresIn: "7d", // Longer-lived
    }
  );
  const expiresAt = moment()
    .tz(timezone)
    // .add(15, "minute") // Add 1 hour
    .add(15, "minute") // Add 5 minute
    .toDate(); // Convert to JavaScript Date object

  // Update session in database

  const session = await Session.findOne({
    where: { token: req.body.token },
  });
  if (!session) {
    return res.status(401).json({ error: "Invalid token" });
  }

  // Update session with the new access token
  session.token = token;
  session.refresh_token = refreshToken;
  session.expiresAt = expiresAt; // 1 hr
  await session.save();

   res.status(200).json(
    success("User role switched successfully!", {
      token: token,
      refreshToken: refreshToken,
    })
  );

};

//refresh the token
exports.refreshAccessToken = async (req, res) => {
  const { refreshToken } = req.body;

  if (!refreshToken) {
    return res.status(400).json({ error: "Refresh token is required" });
  }

  try {
    // Verify the refresh token
    const decoded = jwt.verify(refreshToken, process.env.REFRESH_TOKEN_SECRET);

    // Check if the refresh token exists in the database
    const session = await Session.findOne({
      where: { refresh_token: refreshToken },
    });
    if (!session) {
      return res.status(401).json({ error: "Invalid refresh token" });
    }

    await User.findOne({
      where: { id: decoded.userId },
    }).then(async (user) => {
      if (user) {
        tokendata = {
          username: decoded.username,
          userId: decoded.userId,
          userRole: decoded.userRole,
        };
  
        var newToken = jwt.sign(
          JSON.parse(JSON.stringify(tokendata)),
          process.env.JWT_SECRET,
          {
            expiresIn: "15m", //10s 4m
          }
        );

        const expiresAt = moment()
        .tz(timezone)
        // .add(15, "minute") // Add 1 hour
        .add(15, "minute") // Add 5 minute
        .toDate(); // Convert to JavaScript Date object

        // Update session with the new access token
        session.token = newToken;
        session.expiresAt = expiresAt; // 15 mins
        await session.save();

        res.status(200).json({ token: newToken });
      }
    });
  } catch (error) {
    console.error(error);
    res.status(401).json({ error: "Invalid or expired refresh token" });
  }
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

      const template =
        "Hello " +
        req.body.firstname +
        "! Your application has been reverted back! " +
        "Please make the appropriate changes and re-submit the application - Directorate of Higher Education";

      var responseSMS = SMSNotification(req.body.phone, template);

      var response = notificationController.createNotification(
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

  let ur = await UserRole.findOne({
    where: {
      user_id: req.user.id,
      role_id: req.user.role_id,
    },
  });

  req.body.status == "VER" ? (is_verified = true) : (is_verified = false);
  const template = (message = "");
  if (req.body.status == "VER") {
    template =
      "Hello User " +
      req.body.firstname +
      "! Your account has been successfully verified on SUGAM Portal!" +
      " You can log in and access the services at our website https://www.sugam.gshec.edu.in - Directorate of Higher Education";

    message = "Your account has been successfully Verified!";
  } else if (req.body.status == "REJ") {
    template =
      "Hello User " +
      req.body.firstname +
      "! Your application has been declined! Please contact the appropriate authority for any queries - Directorate of Higher Education";
    message = "Your application has been declined!";
  } else if (req.body.status == "INC") {
    template =
      "Hello User " +
      req.body.firstname +
      "! Your application has been marked as incomplete! " +
      "Please make the appropriate changes and re-submit the application - Directorate of Higher Education";
    message = "Your application has been reverted back!";
  }

  var responseSMS = SMSNotification(req.body.phone, template);

  var response = notificationController.createNotification(
    49,
    ur.id,
    "Profile status",
    message
  );

  const updatefields = {
    is_verified: is_verified,
    status: req.body.status,
    verified_by: ur.id,
  };

  User.update(updatefields, {
    where: { id: id },
  })
    .then((num) => {
      if (num == 1) {
        return res.status(200).json(success("Status updated successfully!"));
      } else {
        return res
          .status(400)
          .json(errorResponse(`Cannot update Status!`, 400));
      }
    })
    .catch((err) => {
      return res.status(400).json(errorResponse(`Cannot update Status!`, 400));
    });
};

//requirement for users who log in using e-pramaan
exports.createUserDetailsForEpramaan = async function (req, res) {
  // const result = await sequelize.transaction(async (t) => {
  // var salt = bcrypt.genSaltSync(10);
  // var hash = bcrypt.hashSync(req.body.password, salt);

  User.findOne({
    where: {
      [Op.or]: [
        { username: req.body.username },
        { phone: req.body.phone },
        { email: req.body.email },
      ],
    },
  }).then((user) => {
    if (user) {
      tokendata = {
        username: user.username,
        userId: user.id,
        userRole: 7,
      };

      var token = jwt.sign(
        JSON.parse(JSON.stringify(tokendata)),
        process.env.JWT_SECRET,
        {
          expiresIn: 120000,
        }
      );

      res
        .status(200)
        .json(success("Student-User logged in successfully", token));
    } else {
      User.create({
        username: req.body.username,
        password: "",
        phone: req.body.phone,
        email: req.body.email,
        status: "VER", //VER
        is_verified: true, //VER
        verified_by: 77, //superadmin
      })
        .then((createdUser) => {
          //save user id and college id in students and staff table
          UserRole.create({
            user_id: createdUser.id,
            role_id: 7, //only student
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
                    user_id: createdUser.id,
                  })
                    .then((userContact) => {
                      // const template =
                      //   "Hello " +
                      //   req.body.firstname +
                      //   "! Your application has been successfully submitted on SUGAM Portal! " +
                      //   "Your profile is pending for verification.-Directorate of Higher Education.";

                      // var responseSMS = SMSNotification(
                      //   req.body.phone,
                      //   template
                      // );

                      tokendata = {
                        username: createdUser.username,
                        userId: createdUser.id,
                        userRole: 7,
                      };

                      var token = jwt.sign(
                        JSON.parse(JSON.stringify(tokendata)),
                        process.env.JWT_SECRET,
                        {
                          expiresIn: 120000,
                        }
                      );

                      // var response =
                      //   notificationController.createNotification(
                      //     49,
                      //     userRole.id,
                      //     "Registration",
                      //     "Your Resgistration has been created Successfully! "
                      //   );

                      res
                        .status(200)
                        .json(
                          success("Student-User created successfully", token)
                        );
                    })
                    .catch((error) => {
                      res.status(400).json(errorResponse(error, 400));
                    });
                })
                .catch((error) => {
                  res.status(400).json(errorResponse("InstProg", 400));
                });
            })
            // }) //transaction close
            .catch((error) => {
              res.status(400).json(errorResponse(error, 400));
            });

          // })
          // .catch((error) => {
          //   res.status(400).json(errorResponse(error, 400));
          // });
        })
        .catch((error) => {
          res.status(400).json(errorResponse(error, 400));
        });
    }
  });
  // .catch((error) => {
  //   res.status(400).json(errorResponse(error, 400));
  // });
};

exports.registerGEDCAdmin = async function (req, res) {
  var userCredentialsdata;
  userCredentialsdata = userCredentials(req.body.email, req.body.phone);
  var salt = bcrypt.genSaltSync(10);
  var hash = bcrypt.hashSync(userCredentialsdata.password, salt);

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
    }).then((userRole) => {
      //Save SuperAdmin Personal Details
      UserPersonalDetails.create({
        user_id: userRole.user_id,
        firstname: req.body.firstname,
        lastname: req.body.lastname,
        phone: req.body.phone,
        email: req.body.email,
      }).then((UserPersonalDetails) => {
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

                // response = await EmailNotification(
                //   from,
                //   req.body.email,
                //   subject,
                //   template,
                //   req.body.firstname,
                //   userCredentialsdata.username,
                //   userCredentialsdata.password,
                //   ""
                // );
                // if (response) {
                res
                  .status(200)
                  .json(
                    success(
                      "GEDC admin User Credentials forwarded successfully"
                    )
                  );
                // } else {
                //   res
                //     .status(400)
                //     .json(
                //       errorResponse(
                //         "Failed to Forwarded User Credentials",
                //         400
                //       )
                //     );
                // }
              })
              .catch((error) => {
                res
                  .status(400)
                  .json(errorResponse("Failed to save Entity User", 400));
              });
          })
          .catch((error) => {
            res
              .status(400)
              .json(errorResponse("Failed to save Admin Designation", 400));
          });
      });
    });
  });
};

exports.registerbulkUsers = async function (req, res) {
  const dataArray = req.body;

  try {
    for (const entry of dataArray) {
      const {
        role_id,
        firstname,
        lastname,
        email,
        phone,
        designation_id,
        employmenttype_id,
        entity_type_id,
        cio_id,
      } = entry;

      console.log(
        `Name: ${firstname} ${lastname}, Email: ${email}, Phone: ${phone}`
      );

      // Generate user credentials
      const userCredentialsdata = userCredentials(email, phone);
      const salt = bcrypt.genSaltSync(10);
      const hash = bcrypt.hashSync(userCredentialsdata.password, salt);

      // Create user
      const user = await User.create({
        username: userCredentialsdata.username,
        password: hash,
        phone,
        email,
        status: "VER",
        is_verified: true,
      });

      // Assign role
      const userRole = await UserRole.create({
        user_id: user.id,
        role_id: role_id,
        preferred_role: true,
        is_active: true,
      });

      // Save personal details
      await UserPersonalDetails.create({
        user_id: userRole.user_id,
        firstname,
        lastname,
        phone,
        email,
      });

      // Save designation
      await UserDesignation.create({
        user_id: userRole.user_id,
        designation_id,
        employementtype_id: employmenttype_id,
      });

      // Save entity association
      await EntityUser.create({
        user_id: userRole.user_id,
        entity_type_id,
        cio_id,
      });

      // Optional: Call email notification here if needed
      console.log("call email Notification function");

      // Example: await emailNotificationFunction();
    }

    res.status(200).json(success("All users registered successfully"));
  } catch (error) {
    console.error("Error registering users:", error);
    res.status(400).json(errorResponse("Failed to register users", 400));
  }
};

// exports.registerbulkUsers = async function (req, res) {

//   const dataArray = req.body;

//     // Step 3: Iterate through the array
//     dataArray.forEach(entry => {
//         // Access each entry's properties
//         const { role_id, firstname, lastname, email, phone, designation_id, employmenttype_id, entity_type_id, cio_id } = entry;

//         // Example: Log each entry
//         console.log(`Name: ${firstname} ${lastname}, Email: ${email}, Phone: ${phone}`);

//         // You can also perform operations here, such as inserting into the database
//         // insertIntoDatabase(role_id, firstname, lastname, email, phone, designation_id, employmenttype_id, entity_type_id, cio_id);

//   var userCredentialsdata;
//   userCredentialsdata = userCredentials(email, phone);
//   var salt = bcrypt.genSaltSync(10);
//   var hash = bcrypt.hashSync(userCredentialsdata.password, salt);

//   User.create({
//     username: userCredentialsdata.username,
//     password: hash,
//     phone: phone,
//     email: email,
//     status: "VER",
//     is_verified: true,
//   }).then((user) => {
//     //save superAdmin Role
//     UserRole.create({
//       user_id: user.id,
//       role_id: role_id,
//       preferred_role: true,
//       is_active: true,
//     }).then((userRole) => {
//       //Save SuperAdmin Personal Details
//       UserPersonalDetails.create({
//         user_id: userRole.user_id,
//         firstname: firstname,
//         lastname: lastname,
//         phone: phone,
//         email: email,
//       }).then((UserPersonalDetails) => {
//         UserDesignation.create({
//           user_id: userRole.user_id,
//           designation_id: designation_id,
//           employementtype_id: employmenttype_id,
//         })
//           .then((UserDesignation) => {
//             EntityUser.create({
//               user_id: userRole.user_id,
//               entity_type_id: entity_type_id,
//               cio_id: cio_id,
//             })
//               .then(async (EntityUser) => {
//                 console.log("call email Notification function");
//                 var from = process.env.EMAIL_FROM;
//                 var subject = "User Credentials";
//                 var template = "welcome";
//                 var response;

//                 // response = await EmailNotification(
//                 //   from,
//                 //   req.body.email,
//                 //   subject,
//                 //   template,
//                 //   req.body.firstname,
//                 //   userCredentialsdata.username,
//                 //   userCredentialsdata.password,
//                 //   ""
//                 // );
//                 // if (response) {
//                 res
//                   .status(200)
//                   .json(
//                     success(
//                       "User Credentials created successfully"
//                     )
//                   );
//                 // } else {
//                 //   res
//                 //     .status(400)
//                 //     .json(
//                 //       errorResponse(
//                 //         "Failed to Forwarded User Credentials",
//                 //         400
//                 //       )
//                 //     );
//                 // }
//               })
//             })
//           .catch((error) => {
//             res
//               .status(400)
//               .json(errorResponse("Failed to save Admin Designation", 400));
//           });
//       });
//     });
//   });
// });
// };

//Function to get list of all HOIs
//change the function. make generic. if the type is institute, fetch institute details. if user belongs to dept, fetch dept details. if the user belongs to service,
//fetch his
exports.getlistOfHois = function (req, res) {
  let queryOptions = {};
  var hois = [];

  UserRole.findAll({
    attributes: [],
    where: {
      role_id: 18, //hoi role id
    },
    include: [
      {
        model: Role,
        attributes: ["id", "name", "type"],
      },
      {
        model: User,
        attributes: ["id", "username", "email"],
      },
    ],
  }).then(async (userRole) => {
    for (ur of userRole) {
      let userpersonaldetails = await UserPersonalDetails.findOne({
        // attributes: ["name"],
        where: {
          user_id: ur.User.id, //hoi role id
        },
      });

      let entityuser = await EntityUser.findOne({
        // attributes: ["name"],
        where: {
          user_id: ur.User.id, //hoi role id
        },
        include: [
          {
            model: Institute,
            attributes: ["id", "name"],
          },
        ],
      });

      let hoi = {
        name: userpersonaldetails,
        institute: entityuser.Institute.name,
      };
      hois.push(hoi);
    }

    res.status(200).json(success("User Details fetched successfully", hois));
  });
};

//Function to verify google captcha
exports.verifyGoogleCaptcha = async (req, res) => {
  try {
    // Make a request to Google's captcha verification endpoint
    const response = await axios.post(
      `https://www.google.com/recaptcha/api/siteverify`,
      null,
      {
        params: {
          secret: process.env.CAPTCHA_SECRET,
          response: req.body.token,
        },
      }
    );
    // Send only relevant parts of the response
    if (response.data.success) {
      res.status(200).json(
        success("Google captcha verified successfully", {
          success: response.data.success,
          challenge_ts: response.data.challenge_ts,
          hostname: response.data,
        })
      );
    } else {
      res.status(400).json(
        errorResponse(
          {
            success: response.data.success,
            challenge_ts: response.data.challenge_ts,
            hostname: response.data,
          },
          400
        )
      );
    }
  } catch (error) {
    // Handle Axios errors gracefully
    console.log(error);
    res.status(400).json(errorResponse("Failed to verify", 400));
    res.status(error.response?.status || 500).json({
      message: error.message,
      data: error.response?.data, // Include server response data if available
    });
  }
};

exports.logout = async (req, res) => {
  try {
    // Attempt to delete the session
    const deletedCount = await Session.destroy({
      where: { user_id: req.user.id },
    });

    if (deletedCount === 0) {
      return res
        .status(404)
        .json({ error: "Session not found or already logged out" });
    }

    res.status(200).json({ message: "Logged out successfully" });
  } catch (error) {
    console.error("Logout error:", error);
    res.status(500).json({ error: "Internal server error" });
  }
};

exports.expiryCheck = async (req, res) => {
  try {
    // Check token expiration
    const decoded = jwt.verify(req.body.token, process.env.JWT_SECRET);

    if (decoded.exp) {
      const date = new Date(decoded.exp * 1000); // Multiply by 1000 to convert seconds to milliseconds

      // Format expiration time in the desired timezone using moment-timezone
      const formattedExpirationTime = moment(date)
        .tz(timezone) // Convert to the specific timezone
        .format("YYYY-MM-DD HH:mm:ss"); // Customize the format as needed

      const currentTime = Math.floor(Date.now() / 1000);
      if (decoded.exp < currentTime) {
        res
          .status(400)
          .json(errorResponse({ expired: true }, "Token Expired!"));
      } else {
        // res.status(200).json(success("Token is still valid! Token will Expire at " + date.toLocaleTimeString(), { expired: false, expiryAt: date.toLocaleTimeString() }));formattedExpirationTime
        res
          .status(200)
          .json(
            success(
              "Token is still valid! Token will Expire at " +
                formattedExpirationTime, { expired: false, expiryAt: formattedExpirationTime }
            )
          );
      }
    } else {
      res.status(400).json(errorResponse({ expired: true }, "Token Expired!"));
    }
  } catch (error) {
    console.error("expiry error:", error);
    res.status(500).json({ error: "Expiry Internal server error" });
  }
};

exports.encryptpassword = async (req, res) => {
  // Hash password
  const salt = bcrypt.genSaltSync(10);
  const encryptedPassword = CryptoJS.AES.encrypt(
    req.body.password,
    process.env.CRYPTOJS_SECRET
  ).toString();

  res
    .status(200)
    .json(
      success("Encrypted password created successfully! ", encryptedPassword)
    );
};

exports.deleteExpiredTokens = async (req, res) => {
  try {
    // Get the current timestamp
    const currentTime = new Date();

    // Delete expired tokens
    const deletedRows = await Session.destroy({
      where: {
        expires_at: {
          [Op.lt]: currentTime, // Find sessions where expires_at is less than the current time
        },
      },
    });

    console.log(`Successfully deleted ${deletedRows} expired tokens.`);
    return deletedRows;
  } catch (error) {
    console.error('Error deleting expired tokens:', error);
    throw error;
  }
};