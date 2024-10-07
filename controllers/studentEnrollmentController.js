const jwt = require("jsonwebtoken");
require("dotenv").config();

const bcrypt = require("bcryptjs");
const db = require("../models");

const StudentEnrollment = require("../models").StudentEnrollment;
const Programme = require("../models").Programme;
const Subject = require("../models").Subject;
const Class = require("../models").Class;
const Semester = require("../models").Semester;
const Stream = require("../models").Stream;
const User = require("../models").User;
const Institute = require("../models").Institute;
const InstituteType = require("../models").InstituteType;
const EvalTypes = require("../models").EvalTypes;
const InstituteProgramme = require("../models").InstituteProgramme;
const { success, errorResponse, validation } = require("../responseApi");
const e = require("express");

//const db = require("../models");

//const StudentMarks = db.studentMarks;
const Op = require("sequelize").Op;

// Find a single StudentEnrollment with an id (current enrollment/register)
exports.findOne = (req, res) => {
  StudentEnrollment.findAll({
    include: [
      {
        model: Class,
        // where: {
        //   id: {
        //     [Op.ne]: 0, // Only include if class is not zero
        //   },
        // },
      },
      {
        model: EvalTypes,
        // required: false, // This makes the inclusion optional
        // where: {
        //   id: {
        //     [Op.not]: null, // Include EvalTypes only when id is not null
        //   },
        // },
      },
      {
        model: Semester,
      },
      {
        model: Stream,
        // where: {
        //   id: {
        //     [Op.ne]: 0, // Only include if class is not zero
        //     [Op.ne]: null, // Only include if class is not zero
        //   },
        // },
      },
    ],
    where: {
      user_id: req.user.id,
      is_active: 1,
    },
  })
    .then(async (datas) => {
      
      let finalData = [];
      if (datas.length) {
        for (const data of datas) {

          

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
          subject_id: subjectDetails ? subjectDetails.id : null,
          subject_name: subjectDetails ? subjectDetails.name : null,
          stream_id: data.Stream ? data.Stream.id : null,
          stream_name: data.Stream ? data.Stream.name : null,
          // board_univ: instituteProgramme.board_univ,
          current_semester_id: data.current_semester_id,
          current_semester_name: data.Semester ? data.Semester.name : null,
          eval_type_id: data.evaltype_id,
          eval_type_name: data.EvalTypes ? data.EvalTypes.name : null,
          current_class: data.Class,
          is_active: data.is_active,
        };
        finalData.push({academic});
        
        }
      } else {
        res
          .status(400)
          .json(
            errorResponse(
              err + "UP Error retrieving Student Enrollment details with id=",
              400
            )
          );
      }

      res
          .status(200)
          .json(
            success(
              "Student Enrollment details fetched successfully!",
              finalData
            )
          );
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
 
      await StudentEnrollment.update(
        {
          user_id: req.user.id,
          institute_id: req.body.institute_id,
          programme_id: req.body.programme_id,
          current_class_id: req.body.current_class_id,
          current_semester_id: req.body.current_semester_id,
          subject_id: req.body.subject_id,
          academic_year_id: req.body.academic_year_id,
          stream_id: req.body.stream_id,
          is_active: req.body.pursuing,
        },
        { where: { user_id: req.user.id, id: req.body.enrollment_id } }
      ).then(async (data) => {
        res
          .status(200)
          .json(
            success("Student Enrollment details updated successfully!", data)
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
      stream_id: req.body.stream_id,
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

// Delete a studentEnrollment with the specified id in the request
exports.deleteOnlyEnrollment = async (req, res) => {
  const id = req.body.id;

  await StudentEnrollment.destroy({
    where: { id: id },
  }).then(async (num) => {
    res
      .status(200)
      .json(success("Student enrollment were deleted successfully!"));
  });
};
