const express = require("express");
const Department = require("../models").Department;
const User = require("../models").User;
const UserRole = require("../models").UserRole;
const UserPersonalDetails = require("../models").UserPersonalDetails;
const UserDesignation = require("../models").UserDesignation;
const EntityUser = require("../models").EntityUser;
const bcrypt = require("bcryptjs");
const {
  success,
  errorResponse,
  validation,
  userCredentials,
} = require("../responseApi");

const Sequelize = require("sequelize");
const Op = Sequelize.Op;

exports.create = function (req, res) {
  console.log(req.body);
  Department.create({
    name: req.body.name,
  })
    .then((departments) => {
      res.status(200).json(success("Department created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await Department.findAll({
    where: {
      is_active: true,
    },
  })
    .then((departments) => {
      res
        .status(200)
        .json(success("Departments fetched successfully!", departments));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.getDepartmentNames = async function (req, res) {
  let ids = [];

  req.body.dept_data.forEach((department) => {
    ids.push(department.dept_id.toString());
  });
  Department.findAll({
    attributes: ["id", "name"],
    where: {
      id: {
        [Sequelize.Op.in]: ids,
      },
      is_active: true,
    },
  })
    .then((departmentDetails) => {
      res
        .status(200)
        .json(success("Department fetched successfully!", departmentDetails));
    })
    .catch((error) => {
      console.log(error);
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.registerDepartmentUser = function (req, res) {
  const email = req.body.email;
  const phone = req.body.phone;

  var userCredentialsdata;
  userCredentialsdata = userCredentials(email, phone);
  //console.log("Username:",userCredentialsdata.username);
  //console.log("Password:",userCredentialsdata.password)

  var salt = bcrypt.genSaltSync(10);
  var hash = bcrypt.hashSync(userCredentialsdata.password.toString(), salt);
  User.create({
    username: userCredentialsdata.username,
    password: hash,
    phone: req.body.phone,
    email: req.body.email,
    status: "REG",
  }).then((user) => {
    //save superAdmin Role
    UserRole.create({
      user_id: user.id,
      role_id: 12,
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
                    var from = process.env.EMAIL_FROM;
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

exports.getDepartmentAdmins = async function (req, res) {
  const data = await UserRole.findAll({
    attributes: ["user_id"],
    where: {
      role_id: 4,
    },
  });
  if (data) {
    var jsondata = [];
    for (const d of data) {
      let userdetails = await UserPersonalDetails.findOne({
        attributes: ["firstname", "lastname"],
        where: {
          user_id: d.user_id,
        },
      });

      let EUser = await EntityUser.findOne({
        attributes: ["cio_id"],
        where: {
          user_id: d.user_id,
        },
      });

      let Departmentname = await Department.findOne({
        attributes: ["name"],
        where: {
          id: EUser.cio_id,
        },
      });
      jsondata.push({
        firstname: userdetails.firstname,
        lastname: userdetails.lastname,
        Department_Name: Departmentname.name,
      });
    }
    return res
      .status(200)
      .json(success("Institute Admins fetched successfully!", jsondata));
  } else {
    return res.status(400).json(errorResponse(error, 400));
  }
};

exports.getDepartmentUsers = async function (req, res) {
  let deptIds = [];

  req.body.dept_data.forEach((department) => {
    deptIds.push(department.dept_id.toString());
  });

  Department.findAll({
    attributes: ["id", "name"],
    where: {
      id: {
        [Sequelize.Op.in]: deptIds,
      },
      is_active: true,
    },
  })
    .then((departmentDetails) => {
      console.log(departmentDetails);
      EntityUser.findAll({
        where: {
          cio_id: {
            [Sequelize.Op.in]: deptIds,
          },
          is_active: true,
        },
      }).then((entityUsers) => {
        res
          .status(200)
          .json(success("Department fetched successfully!", entityUsers));
      });
    })
    .catch((error) => {
      console.log(error);
      res.status(400).json(errorResponse(error, 400));
    });
  //  jsondata.push({"firstname":userdetails.firstname,"lastname":userdetails.lastname,"Department_Name":Departmentname.name})

  //       }
  //       return  res.status(200).json(success("Institute Admins fetched successfully!", jsondata))
  //   }else{
  //       return res.status(400).json(errorResponse(error, 400));
  //   }
};
