const jwt = require("jsonwebtoken");
require("dotenv").config();

const bcrypt = require("bcryptjs");
const db = require("../models");

const StudentEnrollment = require("../models").StudentEnrollment;
const Programme = require("../models").Programme;
const Subject = require("../models").Subject;
const Class = require("../models").Class;
const Semester = require("../models").Semester;
const User = require("../models").User;
const Institute = require("../models").Institute;
const InstituteType = require("../models").InstituteType;
const InstituteProgramme = require("../models").InstituteProgramme;
const { success, errorResponse, validation } = require("../responseApi");
const e = require("express");

//const db = require("../models");

//const StudentMarks = db.studentMarks;
const Op = require("sequelize").Op;

// Find a single StudentEnrollment with an id
exports.findOne = (req, res) => {
  StudentEnrollment.findOne({
    include: [
      {
        model: Class,
        where: {
          id: {
            [Op.ne]: 0, // Only include if class is not zero
          },
        },
      },
      {
        model: Semester,
        // where: {
        //   id: {
        //     [Op.ne]: 0, // Only include if semester_id is not zero
        //   },
        // },
      },
    ],
    where: {
      user_id: req.user.id,
      // is_active: 1,
    },
  })
    .then(async (data) => {
      if (data) {
        let institute = await Institute.findOne({
          attributes: ["name"],
          include: [
            {
              model: InstituteType,
            },
          ],
          where: {
            id: data.institute_id,
          },
        });

        let program = await Programme.findOne({
          attributes: ["name"],
          where: {
            id: data.programme_id,
          },
        });

        //student academic details---------------------------------------
        var academic;
        let subjectDetails = {};
        if (data.subject_id) {
          subjectDetails = await Subject.findOne({
            where: {
              id: data.subject_id,
            },
          });
        } else {
          subjectDetails.name = "";
        }

        academic = {
          student_enrollemnt_id: data.id,
          academic_year_id: data.academic_year_id,
          institute_type_id: institute.InstituteType.id,
          institute_type_name: institute.InstituteType.name,
          institute_id: data.institute_id,
          institute_name: institute.name,
          program_id: data.programme_id,
          program_name: program.name,
          subject_id: subjectDetails.id,
          subject_name: subjectDetails.name,
          // board_univ: instituteProgramme.board_univ,
          current_semester_id: data.current_semester_id,
          current_semester_name: data.Semester ? data.Semester.name : null,
          current_class: data.Class,
          is_active: data.is_active,
        };

        res
          .status(200)
          .json(
            success(
              "Student Enrollment details fetched successfully!",
              academic
            )
          );
      } else {
        res
          .status(400)
          .json(
            errorResponse(
              err +
                "UP Error retrieving Student Enrollment details with id=" +
                id,
              400
            )
          );
      }
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            "Error retrieving Student Enrollment details with id=",
            400
          )
        );
    });
};

// Save a single StudentEnrollment with an id
exports.update = async (req, res) => {
  await InstituteProgramme.findOne({
    attributes: ["id"],
    where: {
      institute_id: req.body.institute_id,
      programme_id: req.body.programme_id,
    },
  })
    .then(async (instprog) => {
      await StudentEnrollment.update(
        {
          user_id: req.user.id,
          institute_id: req.body.institute_id,
          programme_id: req.body.programme_id,
          current_class_id: req.body.current_class_id,
          current_semester_id: req.body.current_semester_id,
          subject_id: req.body.subject_id,
          academic_year_id: req.body.academic_year_id,
          is_active: req.body.pursuing,
        },
        { where: { user_id: req.user.id,
          id: req.body.enrollment_id
         } }
      ).then(async (data) => {
        res
          .status(200)
          .json(
            success("Student Enrollment details updated successfully!", data)
          );
      });
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + " Error updating Student Enrollment details with id=",
            400
          )
        );
    });
};

// create a new StudentEnrollment
exports.create = async (req, res) => {
  // await InstituteProgramme.findOne({
  //   attributes: ["id"],
  //   where: {
  //     institute_id: req.body.institute_id,
  //     programme_id: req.body.programme_id,
  //   },
  // })
  //   .then(async (instprog) => {
  await StudentEnrollment.create(
    {
      user_id: req.user.id,
      institute_id: req.body.institute_id,
      programme_id: req.body.programme_id,
      current_class_id: req.body.current_class_id,
      current_semester_id: req.body.current_semester_id,
      subject_id: req.body.subject_id,
      academic_year_id: req.body.academic_year_id,
      is_active: req.body.pursuing,
    }
    // { where: { user_id: req.user.id } } //need token on priority
    // { where: { user_id: req.body.user_id } }
  )
    .then(async (data) => {
      res
        .status(200)
        .json(
          success("Student Enrollment details created successfully!", data)
        );
    })
    // })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(err + " Error creating Student Enrollment details", 400)
        );
    });
};