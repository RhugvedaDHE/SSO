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
const StudentEnrollment = require("../models").StudentEnrollment;
const InstituteProgramme = require("../models").InstituteProgramme;
const Institutes = require("../models").Institute;
const Programmes = require("../models").Programme;
const Stream = require("../models").Stream;
const UserContact = require("../models").UserContact;
const CasteCategory = require("../models").CasteCategory;
const Religion = require("../models").religion;
const BloodGroup = require("../models").BloodGroup;
const Skill = require("../models").Skill;
const UserQualification = require("../models").UserQualification;
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

//Function to get list of all institute's staff: paresh
//We need to get list of all the staff whoes profile is complete hence adding profile_status field
//param :id which is institute ID
exports.getInstituteStaffList = async function (req, res) {
  const instituteId = req.params.id;
  //const programId = req.params.ProgramId;

  const instituteProgrammeResult = await InstituteProgramme.findAll({
    attributes: ["id", "institute_id", "programme_id"],
    where: {
      institute_id: instituteId,
    },
  });

  console.log(instituteProgrammeResult);
  if (instituteProgrammeResult) {
    var jsondata = [];
    var cnt = 0;

    for (const eachrow of instituteProgrammeResult) {
      cnt++;

      let studentEnrollmentRow = await StudentEnrollment.findOne({
        attributes: [
          "user_id",
          "id",
          "academic_year",
          "institute_programme_id",
        ],
        where: {
          institute_programme_id: eachrow.id,
        },
      });

      if (studentEnrollmentRow) {
        let userdetails = await UserPersonalDetails.findOne({
          attributes: ["firstname", "lastname"],
          where: {
            user_id: studentEnrollmentRow.user_id,
          },
          // include: [
          //   {
          //     model: User,
          //     attributes: ["email", "phone"],
          //     where: {
          //       is_active: true,
          //       is_signed: true,
          //       is_verified: false
          //     }
          //   },
          // ],
        });

        console.log(userdetails);

        let institute = await Institutes.findOne({
          attributes: ["name"],
          where: {
            id: eachrow.institute_id,
          },
        });

        let program = await Programmes.findOne({
          attributes: ["name", "stream_id"],
          where: {
            id: eachrow.programme_id,
          },
        });

        let streamRow = await Stream.findOne({
          attributes: ["id", "name"],
          where: {
            id: program.stream_id,
          },
        });

        jsondata.push({
          srno: cnt,
          user_id: studentEnrollmentRow.user_id,
          student_enrollemnt_id: studentEnrollmentRow.id,
          academic_year: studentEnrollmentRow.academic_year,
          firstname: userdetails.firstname,
          lastname: userdetails.lastname,
          institute_id: eachrow.institute_id,
          institute_name: institute.name,
          stream_id: streamRow.id,
          stream_name: streamRow.name,
          program_id: eachrow.programme_id,
          program_name: program.name,
        });
      }
    }
    return res
      .status(200)
      .json(success("Students fetched successfully!", jsondata));
  } else {
    return res.status(400).json(errorResponse(error, 400));
  }
};

//Function to get student details: Paresh
//Param:id = user's ID
exports.getStaffDetails = async function (req, res) {
  var jsondata = [];
  const userId = req.user.id;
  console.log(userId);
  let staff = await Staff.findOne({
    where: {
      user_id: req.user.id,
    },
  });

  let userPersonalDetails = await UserPersonalDetails.findOne({
    where: {
      user_id: req.user.id,
    },include: [
      {
        model: CasteCategory,
        attributes: ["id", "name"]
      },
      {
        model: Religion,
        attributes: ["id", "name"]
      },
      {
        model: Gender,
        attributes: ["id", "name"]
      },
      {
        model: BloodGroup,
        attributes: ["id", "name"]
      },
    ],
  });

  let userContact = await UserContact.findOne({
    where: {
      user_id: req.user.id,
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

  jsondata.push({
    user_id: userId,
    instituteStaff: instituteStaff,
    declaration: instituteStaff.Staff.User.is_signed, //.Staff.User.is_signed,
    userPersonalDetails: userPersonalDetails,
    dob: userPersonalDetails.dob.toLocaleDateString('en-ZA').replaceAll("/", "-"),
    userContact: userContact,
    nationality_title: userContact,
    // guardian: guardianData,
    // marks: marksData,
    // result: resultData,
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
