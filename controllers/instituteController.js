const express = require("express");
const Sequelize = require("sequelize");
const db = require("../models");
const InstituteType = require("../models").InstituteType;
const Taluka = require("../models").Taluka;
const State = require("../models").State;
const District = require("../models").District;
const Country = require("../models").Country;
const Institute = require("../models").Institute;
const InstituteStaff = require("../models").InstituteStaff;
const Staff = require("../models").Staff;
const UserPersonalDetails = require("../models").UserPersonalDetails;
const Role = require("../models").Role;
const UserRole = require("../models").UserRole;

const { success, errorResponse, validation } = require("../responseApi");
const userpersonaldetails = require("../models/userpersonaldetails");

exports.create = function (req, res) {
  Institute.create({
    institute_type_id: req.body.institute_type_id,
    code: req.body.code,
    name: req.body.name,
    type: req.body.type,
    address: req.body.address,
    taluka_id: req.body.taluka_id,
    state_id: req.body.state_id,
    district_id: req.body.district_id,
    village: req.body.village,
    country_id: req.body.country_id,
    pincode: req.body.pincode,
    hoi_id: req.body.hoi_id,
    contact_person_name: req.body.contact_person_name,
    contact_person_email: req.body.contact_person_email,
  })
    .then((institutes) => {
      res.status(200).json(success("Institute created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await Institute.findAll({
    where: {
      is_active: true,
    },
    include: [
      {
        model: InstituteType,
        attributes: ["name", "is_active"],
      },
      {
        model: Taluka,
        attributes: ["name", "is_active"],
      },
      {
        model: District,
        attributes: ["name", "is_active"],
      },
      {
        model: Country,
        attributes: ["name", "is_active"],
      },
      {
        model: State,
        attributes: ["name", "is_active"],
      },
    ],
  })
    .then((institutes) => {
      res
        .status(200)
        .json(success("Institutes fetched successfully!", institutes));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.gettype = async function (req, res) {
  await Institute.findAll({
    where: {
      is_active: true,
      institute_type_id: req.body.institute_type_id,
    },
    include: [
      {
        model: InstituteType,
        attributes: ["name", "is_active"],
      },
      {
        model: Taluka,
        attributes: ["name", "is_active"],
      },
      {
        model: District,
        attributes: ["name", "is_active"],
      },
      {
        model: Country,
        attributes: ["name", "is_active"],
      },
      {
        model: State,
        attributes: ["name", "is_active"],
      },
    ],
  })
    .then((institutes) => {
      res
        .status(200)
        .json(success("Institutes fetched successfully!", institutes));
    })
    .catch((error) => {
      console.log(error);
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.getusers = async function (req, res) {
  const instituteId = req.body.institute_id;
  var userArray = [];
  var allUsers = [];
  var query = `SELECT DISTINCT("InstituteStaff"."id"), "Staff"."id" AS id, "Department".name As "department_name",
  "Staff".user_id AS user_id, "Staff"."is_active" AS "Staff.is_active", "Staff->User"."id" AS "Staff.User.id", 
  "Staff->User"."is_active" AS "Staff.User.is_active" FROM "InstituteStaffs" AS "InstituteStaff" 
  LEFT OUTER JOIN "Departments" AS "Department" ON "InstituteStaff"."department_id" = "Department"."id"
  LEFT OUTER JOIN "Staffs" AS "Staff" ON "InstituteStaff"."staff_id" = "Staff"."id" 
  LEFT OUTER JOIN "Users" AS "Staff->User" ON "Staff"."user_id" = "Staff->User"."id" 
  WHERE "InstituteStaff"."institute_id" = ${instituteId} AND "InstituteStaff"."is_active" = true AND "Staff->User"."is_verified" = false; `;

  const institutesFaculties = await db.sequelize.query(query, {
    type: db.Sequelize.QueryTypes.SELECT,
  });  
  for (const instituteFaculty of institutesFaculties) {

    console.log("IF&8********************************************************************************************! ", instituteFaculty)
    let userpersonaldetails = await UserPersonalDetails.findOne({
      where: {
        user_id: instituteFaculty.user_id,
        is_active: true,
      },
    });
    
    let userRole = await UserRole.findOne({
      where: {
        user_id: instituteFaculty.user_id,
      },
      include:[
        {
          model: Role,
          attributes: ["id", "name"]
        }
      ]
    })
    console.log("userRoel", userRole)
    userArray.push({
      staff: instituteFaculty,
      userdetails: userpersonaldetails,
      role: userRole
    });

   

    // console.log("USESEERSYYFYDF^DFYSFYSFFSY", allUsers)
  } //);
  allUsers.push(userArray);
 
  res
    .status(200)
    .json(success("Institute-Users fetched successfully!", allUsers));
};

exports.getUniversityAdmins = async function (req, res) {
  const data = await UserRole.findAll({
    attributes: ["user_id"],
    where: {
      role_id: 8,
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

      let Institutename = await Institute.findOne({
        attributes: ["name"],
        where: {
          id: EUser.cio_id,
        },
      });
      jsondata.push({
        firstname: userdetails.firstname,
        lastname: userdetails.lastname,
        Department_Name: Institutename.name,
      });
    }
    return res
      .status(200)
      .json(success("University Admins fetched successfully!", jsondata));
  } else {
    return res.status(400).json(errorResponse(error, 400));
  }
};
