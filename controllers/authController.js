const jwt = require("jsonwebtoken");
require("dotenv").config();
const bcrypt = require("bcryptjs");

const User = require("../models").User;
const UserRole = require("../models").UserRole;
const UserContact = require("../models").UserContact;
const Staff = require("../models").Staff;
const Role = require("../models").Role;
const City = require("../models").City;
const Company = require("../models").Company;
const UserPersonalDetails = require("../models").UserPersonalDetails;
const InstituteStaff = require("../models").InstituteStaff;
const StudentEnrollment = require("../models").StudentEnrollment;
const UserDesignation = require("../models").UserDesignation;
const EntityUser = require("../models").EntityUser;
const InstituteProgramme = require("../models").InstituteProgramme;
const OTP = require("../models").OTP;
const tokenList = {}

const Sequelize = require("sequelize");
const Op = Sequelize.Op;
const {
  success,
  errorResponse,
  validation,
  userCredentials,
  EmailNotification,
} = require("../responseApi");

exports.getUserDetails = function (req, res) {
  UserPersonalDetails.findOne(
    {
      where: {
        user_id: req.user.id,
      },include: [
        {
          model: User,
          attributes:["email", "phone"],        
        },         
      ],
    }
  )
  .then((userPersonalDetails) => {
    UserRole.findOne({
      attributes:["id"],
      where: {
        user_id: userPersonalDetails.user_id,       
      },include: [
        {
          model: Role,
          attributes:["name"],        
        },
      ],
    }).then((userRole)=>{
      UserContact.findOne(
        {
          where: {
            user_id: req.user.id,
          },include: [
            {
              model: City,
              attributes:["name"],        
            },  
            {
              model: State,
              attributes:["name"],        
            },  
            {
              model: District,
              attributes:["name"],        
            },  
            {
              model: Country,
              attributes:["name"],        
            },         
          ],
        }
      ).then((userContact)=>{
        const response = {
          "User": userPersonalDetails,
          "user_role": userRole,
          "user_Contact": userContact,
        };      
        res
        .status(200)
        .json(success("User Details fetched successfully", response));
      })      
    }).catch((error)=>{
      res.status(400).json(errorResponse(error, 400));
    })
    
  }).catch((error)=>{
    res.status(400).json(errorResponse(error, 400));
  })
}

exports.register = function (req, res) {
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
                  }).then((userContact)=>{                  
                  //check if student
                  if (req.body.role_id == 7) {
                    console.log("inside studenntttttttttttttttttttttttttttttt");
                    InstituteProgramme.findOne({
                      attributes:["id"],
                      where: {
                        institute_id: req.body.institute_id,
                        programme_id: req.body.programme_id
                      },
                    }).then((instprog) => {
                      console.log("instprog", instprog)
                      console.log("instprog", instprog.id)
                      StudentEnrollment.create({
                        user_id: user.id,
                        institute_programme_id: instprog.id,
                        current_class: req.body.class,
                      })
                        .then((studentEnrollment) => {
                          res
                            .status(200)
                            .json(success("Student-User created successfully"));
                        })
                        .catch((error) => {
                          res.status(400).json(errorResponse("enrollment", 400));
                        });
                    }).catch((error)=>{
                      res.status(400).json(errorResponse("InstProg", 400));
                    })
                    
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
                              res
                                .status(200)
                                .json(
                                  success("Staff-User created successfully")
                                );
                            })
                            .catch((error) => {
                              res.status(400).json(errorResponse("userdes here", 400));
                            });
                        })
                        .catch((error) => {
                          res.status(400).json(errorResponse("institutestaff", 400));
                        });
                    });
                  } else if (req.body.role_id == 12) {
                    //Company admin
                    console.log("In company create", req.body);

                    const companyData = {
                      organization_type_id: req.body.organization_type_id,
                      user_id: user.id,
                      name: req.body.name,
                      logo: req.body.logo,
                      state_id: req.body.state_id,
                      district_id: req.body.district_id,
                      taluka_id: req.body.taluka_id,
                      village_id: req.body.village_id,
                      city_id: req.body.city_id,
                      landmark: req.body.landmark,
                      street: req.body.street,
                      pincode: req.body.pincode,
                      phone: req.body.phone,
                      email: req.body.email,
                      reg_no: req.body.reg_no,
                      reg_certificate: "certificate", //req.certificate.originalname,
                      verified: req.body.verified ? req.body.verified : false,
                      active: req.body.active ? req.body.active : true,
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
                  } else if (req.body.role_id == 10 || req.body.role_id == 11) {
                    //Company HR or Guide
                    console.log("In company HR/Guide create");

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
                })
              })
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
  console.log("Password:",userCredentialsdata.password)

  var salt = bcrypt.genSaltSync(10);
  var hash = bcrypt.hashSync(userCredentialsdata.password.toString(), salt);

  User.create({
    username: userCredentialsdata.username,
    password: hash,
    phone: req.body.phone,
    email: req.body.email,
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
                  .then((EntityUser) => {
                    console.log("call email Notification function");
                    var from = "dhe.abhishek@gmail.com";
                    var subject = "User Credentials";
                    var template = "welcome";
                    var response;

                    response = EmailNotification(
                      from,
                      req.body.email,
                      subject,
                      template,
                      req.body.firstname,
                      userCredentialsdata.username,
                      userCredentialsdata.password
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
                console.log("*********************************************************************");
                console.log("errrrooorrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrris: ", error);
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
            .then((SuperAdminCreation) => {
              //Send Email
              console.log("call email Notification function");
              var from = "dhe.abhishek@gmail.com";
              var subject = "User Credentials";
              var template = "welcome";
              var response;

              response = EmailNotification(
                from,
                req.body.email,
                subject,
                template,
                req.body.firstname,
                userCredentialsdata.username,
                userCredentialsdata.password
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
  console.log("inside login");
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
      console.log(user);
      UserRole.findOne({
        where: {
          user_id: user.id,
        },
      })
        .then((role) => {
          console.log("role is: ", role.role_id);
          tokendata = {
            username: user.username,
            userId: user.id,
            userRole: role.role_id,
          };
          console.log(tokendata);
          if (!user) {
            res
              .status(400)
              .json(
                errorResponse("User Not found! Please register first", 400)
              );
          }
          console.log("heet");
          const result = bcrypt.compareSync(req.body.password, user.password);

          if (result) {
            console.log("hvhsdvfhvdfhvhdasf here!!!!!")
            
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
                expiresIn: 120,
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
          res.status(400).json(errorResponse(error, 400));
        });
    })
    .catch((error) => res.status(400).json(errorResponse(error, 400)));
};

//update profile
exports.updateProfile = function (req, res) {
  UserPersonalDetails.findOne({
    where: { id: req.user.id },
  })
  .then((userPersonalDetails) => {
    let physically_disabled = req.body.physically_disabled == "yes" ? true : false;

    userPersonalDetails.gender = req.body.gender;
    userPersonalDetails.blood_group = req.body.blood_group;
    userPersonalDetails.nationality = req.body.nationality;
    userPersonalDetails.physically_disabled = physically_disabled;
    userPersonalDetails.save();

    UserContact.findOne({
      where: { id: req.user.id },
    }).then((userContact) =>{
      userContact.address = req.body.address;
      userContact.country_id = req.body.country_id;
      userContact.taluka_id = req.body.city_id;
      userContact.village = req.body.village;
      userContact.pincode = req.body.pincode;
      userContact.city = req.body.city;
      userContact.save()
    })
    res
      .status(200)
      .json(errorResponse("Profile updated successfully!"));
  }).catch((error) => {
    res
    .status(400)
    .json(errorResponse("Please check your details!", 400));
  })
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
  }).catch((error)=>{
    res.status(400).json(errorResponse("User Password not changed successsfully!", 400));
  });
};

//forgotPassword
exports.forgotPassword = function (req, res) {
  
  User.findOne({
    where: { email: req.body.email },
  })
  .then((user) => {
    if(user){
      var salt = bcrypt.genSaltSync(10);
      user.password = bcrypt.hashSync(req.body.password, salt);
      user.save();

      res.status(200).json(success("User Password updated successfully!"));
    }
    else{
      res.status(400).json(errorResponse("User Not Found!", 400));
    }
  }).catch((error)=>{
    res.status(400).json(errorResponse("User Password not changed successsfully!", 400));
  });
};

exports.verifyUsers = function (req, res) {
  User.findOne({
    where: { id: req.body.user_id },
  })
  .then((user) => { 
    user.is_verified = true;
    user.save();
    res.status(200).json(success("User Verifed successfully!"));
  }).catch((error) =>{
    res.status(400).json(errorResponse("Could not verify users!", 400));
  })
};

//refresh the token
exports.refreshToken = function (req, res) {
  User.findOne({
    where:{
      id: req.body.user_id
    }
  }).then((user)=> {
    // refresh the damn token
    UserRole.findOne({
      where: {
        user_id: user.id,
      },
    })
    .then((role) => {
    
      const postData = req.body;
      // if refresh token exists
      if((postData.refresh_token) && (postData.refresh_token in tokenList)) {
        console.log("inside here")
        const tokendata = {
          username: user.username,
          userId: user.id,
          userRole: role.role_id,
        };
          const token = jwt.sign(tokendata, process.env.JWT_SECRET, { expiresIn: process.env.TOKEN_LIFE})
          // const response = {
          //     "token": token,
          // }
          // update the token in the list
          console.log("inside reached on top here")
          tokenList[postData.refresh_token].token = token
          console.log("inside reached here")
          res.status(200).json(success("User Role changed successfully!", token));
      }
    else{
      console.log("inside else")
      res.status(404).json(success("User Not found!"));
    }
    }).catch((error) =>{
      res.status(400).json(errorResponse(error, 400));
    })
  })  
}