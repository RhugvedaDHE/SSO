const jwt = require("jsonwebtoken");
require("dotenv").config();
const bcrypt = require("bcryptjs");

const User = require("../models").User;
const Staff = require("../models").Staff;
const InstituteStaff = require("../models").InstituteStaff;
const UserDesignation = require("../models").UserDesignation;
const InstituteType = require("../models").InstituteType;
const Role = require("../models").Role;
const Department = require("../models").Department;
const Country = require("../models").Country;
const City = require("../models").City;
const State = require("../models").State;
const District = require("../models").District;
const UserPersonalDetails = require("../models").UserPersonalDetails;
const Institute = require("../models").Institute;
const EntityUser = require("../models").EntityUser;
const InstituteProgramme = require("../models").InstituteProgramme;
const Institutes = require("../models").Institute;
// const Role = require("../models").Role;
const UserRole = require("../models").UserRole;
const UserContact = require("../models").UserContact;
const CasteCategory = require("../models").CasteCategory;
const Religion = require("../models").religion;
const BloodGroup = require("../models").BloodGroup;
const EmploymentType = require("../models").EmploymentType;
const Designation = require("../models").Designation;
const qualificationTypes = require("../models").QualificationTypes;
const evalTypes = require("../models").EvalTypes;
const subject = require("../models/").Subject;
const Gender = require("../models/").Gender;
const bloodGroup = require("../models/").BloodGroup;
const country = require("../models/").Country;
const userContact = require("../models/").UserContact;
const data = require("../config/statuses.json");

const Sequelize = require("sequelize");
const Op = Sequelize.Op;
const {
  success,
  errorResponse,
  validation,
  userCredentials,
  EmailNotification,
} = require("../responseApi");
const userpersonaldetails = require("../models/userpersonaldetails");

//Function to get list of all institute's staff: paresh
//We need to get list of all the staff whoes profile is complete hence adding profile_status field
//param :id which is institute ID
exports.getInstituteStaffList = async function (req, res) {
  const instituteId = req.params.id;

  await EntityUser.findAll({
    where: {
      entity_type_id: 1,
      cio_id: instituteId,
    },
    include: [
      {
        model: User,
        where: {
          is_verified: true,
          status: "VER",
        },
        attributes: ["id", "username"]
      },
      {
        model: Institute,       
        attributes: ["id", "name"]
      },
    ],
  })
    .then( async (instituteStaff) => {
      console.log(instituteStaff)
      let userPersonDetails;
      let userRole;
      if (instituteStaff) {
        var jsondata = [];
        jsondata.push({
          count: instituteStaff.length
        })
        for  (const staff of instituteStaff)  {
          
          userPersonDetails = await UserPersonalDetails.findOne({
            attributes: ["firstname", "lastname"],
            where: {
              user_id: staff.user_id,
            },
          })
          
          let userRole = await UserRole.findOne({
            where: {
              user_id: staff.user_id,
            },
            include: [
              {
                model: Role,
                attributes: ["id", "name"],
              },
            ],
          });

          jsondata.push({
            user_id: staff.user_id,
            firstname: userPersonDetails.firstname,
            lastname: userPersonDetails.lastname,
            role: userRole.Role.name,
            role_id: userRole.Role.id,
            institute_name: staff.Institute.name
          });
        }
      }
      return res
        .status(200)
        .json(success("Staff fetched successfully!", jsondata));
    })
    .catch((error) => {
      return res.status(400).json(errorResponse(error, 400));
    });
};

//Function to get staff details: Paresh
//Param:id = user's ID
exports.getStaffDetails = async function (req, res) {
  console.log(req.params.id);
  var jsondata = [];
  let userId = req.params.id ? req.params.id : req.user.id;

  let staff = await Staff.findOne({
    attributes: ["id"],
    where: {
      user_id: userId,
    },
  });

  let userPersonalDetails = await UserPersonalDetails.findOne({
    where: {
      user_id: userId,
    },
    include: [
      {
        model: CasteCategory,
        attributes: ["id", "name"],
      },
      {
        model: Religion,
        attributes: ["id", "name"],
      },
      {
        model: Gender,
        attributes: ["id", "name"],
      },
      {
        model: BloodGroup,
        attributes: ["id", "name"],
      },
      {
        model: Country,
        attributes: ["id", "nationality"],
      },
    ],
  });

  let userContact = await UserContact.findOne({
    where: {
      user_id: userId,
    },
    include: [
      {
        model: City,
        attributes: ["id", "name"],
      },
      {
        model: State,
        attributes: ["id", "name"],
      },
      {
        model: District,
        attributes: ["id", "name"],
      },
      {
        model: Country,
        attributes: ["id", "name"],
      },
    ],
  });

  console.log(userPersonalDetails);
  let instituteStaff = await InstituteStaff.findOne({
    where: {
      staff_id: staff.id,
    },
    include: [
      {
        model: Institutes,
        include: [
          {
            model: City,
            attributes: ["id", "name"],
          },
          {
            model: State,
            attributes: ["id", "name"],
          },
          {
            model: District,
            attributes: ["id", "name"],
          },
          {
            model: Country,
            attributes: ["id", "name", "nationality"],
          },
        ],
      },
      {
        model: Staff,
        // attributes: ["name"],
        include: [
          {
            model: User,
          },
          {
            model: EmploymentType,
            // attributes: ["id", "name"]
          },
        ],
      },
      {
        model: Role,
        // attributes: ["name"],
      },
      {
        model: InstituteType,
        // attributes: ["name"],
      },
      {
        model: Department,
        // attributes: ["name"],
      },
    ],
  });

  let userDesignation = await UserDesignation.findOne({
    where: {
      user_id: userId,
    },
    include: [
      {
        model: Designation,
        attributes: ["id", "name"],
      },
      {
        model: EmploymentType,
        attributes: ["id", "name"],
      },
    ],
  });
  jsondata.push({
    user_id: userId,
    instituteStaff: instituteStaff,
    declaration: instituteStaff.Staff.User.is_signed, //.Staff.User.is_signed,
    userPersonalDetails: userPersonalDetails,
    dob: userPersonalDetails.dob
      ? userPersonalDetails.dob.toLocaleDateString("en-ZA").replaceAll("/", "-")
      : null,
    from_date: instituteStaff.from_date
      ? instituteStaff.from_date
          .toLocaleDateString("en-ZA")
          .replaceAll("/", "-")
      : null,
    to_date: instituteStaff.to_date
      ? instituteStaff.to_date.toLocaleDateString("en-ZA").replaceAll("/", "-")
      : null,
    physically_disabled: userPersonalDetails.physically_disabled ? 1 : 0,
    physically_disabled_title: userPersonalDetails.physically_disabled,
    userContact: userContact,
    // nationality_title: nationality,
    userDesignation: userDesignation,
    // remarks: remarksData,
    // contact_data: contactData,
  });

  // }
  return res
    .status(200)
    .json(success("Staff details fetched successfully!", jsondata));
};

// verfify/rejected or student profile mark incomplete
exports.verifyStudent = (req, res) => {
  const id = req.user.id;
  let is_verified = false;
  let status = "";

  if (JSON.stringify(data).includes(req.body.is_verified)) {
    for (key in data.statuses) {
      if (req.body.is_verified == key) {
        status = data.statuses[key];
      }
    }
  }

  req.body.is_verified == "verified"
    ? (is_verified = true)
    : (is_verified = false);

  const updatefields = {
    is_verified: is_verified,
    status: status,
  };

  User.update(updatefields, {
    where: { id: id },
  })
    .then((num) => {
      if (num == 1) {
        return res
          .status(200)
          .json(success("Students status updated successfully!"));
      } else {
        return res
          .status(400)
          .json(
            errorResponse(
              `Cannot update Student with id=${id}. Maybe Student was not found`,
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
            `Cannot update Student with id=${id}. Maybe Server error`,
            400
          )
        );
    });
};

exports.updateInstituteStaff = async (req, res) => {
  console.log("heyhfbvhbhfdvb", req.body);
  let staff = await Staff.findOne({
    where: {
      user_id: req.user.id,
    },
  });

  await InstituteStaff.update(req.body, {
    where: { staff_id: staff.id },
  })

    .then((updated) => {
      UserDesignation.update(req.body, {
        where: { user_id: req.user.id },
      }).then((response) => {
        if (response == 1) {
          return res
            .status(200)
            .json(success("Staff employment-profile updated successfully!"));
        } else {
          return res
            .status(400)
            .json(
              errorResponse(`Cannot update Staff. Maybe Server error`, 400)
            );
        }
      });
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

//Function to get list of all institute's verified staff: veda
//param :id which is institute ID
exports.getVerifiedInstituteStaffList = async function (req, res) {
  const instituteId = req.params.id;

  await EntityUser.findAll({
    where: {
      entity_type_id: 1,
      cio_id: instituteId,
    },
    include: [
      {
        model: User,
        where: {
          is_verified: true,
          status: "VER",
        },
        attributes: ["id", "username"]
      },
      {
        model: Institute,       
        attributes: ["id", "name"]
      },
    ],
  })
    .then( async (instituteStaff) => {
      console.log(instituteStaff)
      let userPersonDetails;
      let userRole;
      if (instituteStaff) {
        var jsondata = [];
        jsondata.push({
          count: 44
        })
        for  (const staff of instituteStaff)  {
          
          userPersonDetails = await UserPersonalDetails.findOne({
            attributes: ["firstname", "lastname"],
            where: {
              user_id: staff.user_id,
            },
          })
          
          let userRole = await UserRole.findOne({
            where: {
              user_id: staff.user_id,
            },
            include: [
              {
                model: Role,
                attributes: ["id", "name"],
              },
            ],
          });

          jsondata.push({
            user_id: 33333,
            firstname: userPersonDetails.firstname,
            lastname: userPersonDetails.lastname,
            role: userRole.Role.name,
            role_id: userRole.Role.id,
            institute_name: staff.Institute.name
          });
        }
        
      }
      return res
        .status(200)
        .json(success("Staff fetched successfully!", jsondata));
    })
    .catch((error) => {
      return res.status(400).json(errorResponse(error, 400));
    });
};