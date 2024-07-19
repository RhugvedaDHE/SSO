const jwt = require("jsonwebtoken");
require("dotenv").config();

const bcrypt = require("bcryptjs");
const db = require("../models");
//const uploadFile = require("../middleware/upload");
const StudentMarks = require("../models").StudentMarks;
const StudentEnrollment = require("../models").StudentEnrollment;
const Programme = require("../models").Programme;
const User = require("../models").User;
const InstituteProgramme = require("../models").InstituteProgramme;
const UserDocs = require("../models").UserDocs;
const DocumentType = require("../models").DocumentType;
const EvalTypes = require("../models").EvalTypes;
const { success, errorResponse, validation } = require("../responseApi");
const e = require("express");

//const db = require("../models");

//const StudentMarks = db.studentMarks;
const Op = require("sequelize").Op;

// Create and Save a new StudentMarks
exports.create = async (req, res) => {
  console.log("in controller studentMarks");

  if (!req.body.student_enrollment_id) {
    res
      .status(400)
      .json(errorResponse("Student enrollment ID cannot be empty!", 400));
    return;
  }

  // Create a StudentMarks

  let studentEnrollment = StudentEnrollment.findOne({
    attributes: ["id"],
    where: {
      user_id: req.user.id,
      active: true
    },
  });

  //check if student has already selected last qualifying exam
  let last_qual_year = StudentMarks.findAll({
    where: {
      student_enrollment_id: studentEnrollment.id,
      last_qual_year: true,
    },
  });
  
  if (last_qual_year.length) {
    res.status(200).json(success("Select only one last qualifying semester create!"));
  } else {

    let instituteProgramme = await InstituteProgramme.findOne({
      attributes: ["id", "institute_id", "programme_id"],
      where: {
        institute_id: req.body.institute_id,
        programme_id: req.body.programme_id
      },
    });

    const studentEnrollment = {
      user_id: req.user.id,
      institute_programme_id: instituteProgramme.id,
      subject_id: req.body.subject_id,
      academic_year: req.body.academic_year,
      current_semester_id: req.body.current_semester_id,
      current_class_id: req.body.current_class_id,
      other_institute_name: req.body.other_institute_name,
      other_programme_name: req.body.other_programme_name,
      other_subject_name: req.body.other_subject_name,
      consolidated_total_marks: req.body.consolidated_total_marks,
      consolidated_marks_obtained: req.body.consolidated_marks_obtained,
      consolidated_grade_obtained: req.body.consolidated_grade_obtained,
      board_university: req.body.board_university,
      month_year: req.body.month_year,
      is_active: req.body.persuing
    }
    await StudentEnrollment.create(studentEnrollment).then(async (data) =>{
      const studentMarks = {
        board_university: req.body.board_university,
        student_enrollment_id: data.id,
        semester_id: req.body.semester_id,
        eval_type_id: req.body.eval_type_id,
        total_marks: req.body.total_marks,
        marks_obtained: req.body.marks_obtained,
        grade_obtained: req.body.grade_obtained,
        last_qual_year: req.body.last_qual_year,
        month_year: req.body.month_year,
        active: req.body.active ? req.body.active : true,
        updateAt: null,
      };
      await StudentMarks.create(studentMarks)
      .then((data) => {
        res
          .status(200)
          .json(success("Student Marks created successfully!", data));
      })

    }).catch((err) => {
        res.status(400).json(errorResponse(err, 400));
      });
  }
};

// Retrieve all StudentMarks from the database.
exports.findAll = async (req, res) => {
  
  const studentEnrollmentId = req.params.id;
  console.log(req.params.id);
  var condition = studentEnrollmentId
    ? { student_enrollment_id: { [Op.eq]: studentEnrollmentId } }
    : null;
    
  let data = await StudentMarks.findAll({
    order: [["createdAt", "DESC"]],
    where: condition,
    include: [
      // {
      //   model: Programme,
      //   attributes: ["id", "name"],
      // },
      {
        model: EvalTypes,
        attributes: ["id", "name"],
      },
    ],
  });

  if (data) {
    let finalData = [];

    for (const d of data) {
      let programmeDetails = await Programme.findOne({
        where: {
          id: d.program_id,
        },
        include: [
          {
            model: DocumentType,
            attributes: ["id", "name"],
          },
        ],
      });

      const user = await StudentEnrollment.findOne({
        attributes: ["user_id"],
        where: {
          is_active: true,
          id: d.student_enrollment_id,
        },
      });

      let userdocs = await UserDocs.findOne({
        where: {
          user_id: user.user_id,
          doc_type_id: programmeDetails.doc_type_id,
        },
      });
      const userdocId = userdocs ? userdocs.id : null;

      const filePath = userdocs
        ? req.protocol +
          "://" +
          req.get("host") +
          "/static/user/" +
          userdocs.filename
        : null;

      finalData.push({
        id: d.id,
        student_enrollment_id: d.student_enrollment_id,
        program_id: d.program_id,
        program_title: d.Programme.name,
        board_university: d.board_university,
        institute_name: d.institute_name,
        programme_semester_id: d.programme_semester_id,
        course: d.course,
        subject: d.subject,
        year_of_passing: d.year_of_passing,
        eval_type_id: d.eval_type_id,
        eval_type_title: d.EvalType.name,
        total_marks: d.total_marks,
        marks_obtained: d.marks_obtained,
        grade_obtained: d.grade_obtained,
        last_qual_year: d.last_qual_year,
        active: d.active,
        createdAt: d.createdAt,
        updatedAt: d.updatedAt,
        deletedAt: d.deletedAt,
        programme_details: programmeDetails,
        file_id: userdocId,
        file_path: filePath,
      });
    } //end for

    if (finalData) {
      res
        .status(200)
        .json(success("Student Marks fetched successfully!", finalData));
    } else {
      res.status(400).json(errorResponse(`Cannot find Student's Marks`, 400));
    }
  }
};

// Find a single StudentMarks with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  StudentMarks.findByPk(id)
    .then((data) => {
      if (data) {
        res
          .status(200)
          .json(success("Student Marks fetched successfully!", data));
      } else {
        res
          .status(400)
          .json(errorResponse(`Cannot find Student Marks with id=${id}.`, 400));
      }
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + " Error retrieving Student Marks with id=" + id,
            400
          )
        );
    });
};

// Update a StudentMarks by the id in the request
exports.updateMarks = async (req, res) => {
  const id = req.user.id;
  console.log(req.body.program_id);
  // let studentEnrollment = await StudentEnrollment.findOne({
  //   attributes: ["id"],
  //   where: {
  //     user_id: req.user.id,
  //   },
  // });
  

  //check if student has already selected last qualifying exam
  let last_qual_year = await StudentMarks.findAll({
    where: {
      student_enrollment_id: studentEnrollment.id,
      last_qual_year: true,
    },
  });
  
  const studentMarks = {};
  const studentEnroll = {};
  if (last_qual_year.length) {
    res.status(200).json(success("Select only one last qualifying semester!"));
  } else {
    let instituteProgramme = await InstituteProgramme.findOne({
      attributes: ["id", "institute_id", "programme_id"],
      where: {
        institute_id: req.body.institute_id,
        programme_id: req.body.programme_id
      },
    });

    //if completed
    const studentEnrollment = {
      user_id: req.user.id,
      institute_programme_id: instituteProgramme.id,
      subject_id: req.body.subject_id,
      academic_year: req.body.academic_year,
      current_semester_id: req.body.current_semester_id,
      current_class_id: req.body.current_class_id,
      other_institute_name: req.body.other_institute_name,
      other_programme_name: req.body.other_programme_name,
      other_subject_name: req.body.other_subject_name,
      consolidated_total_marks: req.body.consolidated_total_marks,
      consolidated_marks_obtained: req.body.consolidated_marks_obtained,
      consolidated_grade_obtained: req.body.consolidated_grade_obtained,
      board_university: req.body.board_university,
      month_year: req.body.moth_year,
      is_active: req.body.persuing
    }
    await StudentEnrollment.update(studentEnrollment, 
      {
        where: {
          user_id: req.user.id,
          institute_programme_id: instituteProgramme.id,
        },
      })
    .then(async (data) =>{
      const studentMarks = {
        board_university: req.body.board_university,
        student_enrollment_id: data.id,
        semester_id: req.body.semester_id,
        eval_type_id: req.body.eval_type_id,
        total_marks: req.body.total_marks,
        marks_obtained: req.body.marks_obtained,
        grade_obtained: req.body.grade_obtained,
        last_qual_year: req.body.last_qual_year,
        month_year: req.body.month_year,
        active: req.body.active ? req.body.active : true,
      };
      await StudentMarks.update(studentMarks, {
        where:{
          student_enrollment_id: data.id,
        }
      })
      .then((data) => {
        res
          .status(200)
          .json(success("Student Marks updated successfully!", data));
      })

    }).catch((err) => {
        res.status(400).json(errorResponse(err, 400));
      });
    }
    
       
        
      
    
    //    else {
    //     StudentMarks.create(studentMarks, {
    //       // where: { student_enrollment_id: studentEnrollment.id }
    //     })
    //       .then((num) => {
    //         if (num) {
    //           res
    //             .status(200)
    //             .json(success("Student Marks were created successfully!"));
    //         } else {
    //           res
    //             .status(400)
    //             .json(
    //               errorResponse(
    //                 ` Could not create Student Marks with id=${id}. Maybe Student Marks were not found or req.body is empty!`,
    //                 400
    //               )
    //             );
    //         }
    //       })
    //       .catch((err) => {
    //         res
    //           .status(400)
    //           .json(
    //             errorResponse(
    //               err + " Error updating Student Marks with id=" + id,
    //               400
    //             )
    //           );
    //       });
    //   }
    // }
  };

// Delete a StudentMarks with the specified id in the request
exports.delete = (req, res) => {
  const id = req.body.id;

  StudentMarks.destroy({
    where: { id: id },
  })
    .then((num) => {
      if (num == 1) {
        res
          .status(200)
          .json(success("Student Marks were deleted successfully!"));
      } else {
        res
          .status(400)
          .json(
            errorResponse(
              ` Cannot delete StudentMarks with id=${id}. Maybe Student Marks were not found!`,
              400
            )
          );
      }
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(err + ` Cannot delete Student Marks with id=${id}`, 400)
        );
    });
};

// Delete all StudentMarks from the database.
exports.deleteAll = (req, res) => {
  StudentMarks.destroy({
    where: {},
    truncate: false,
  })
    .then((nums) => {
      res
        .status(200)
        .json(success(nums + " Student Marks were deleted successfully!"));
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + ` Some error occurred while removing all StudentMarks`,
            400
          )
        );
    });
};

// Find all active StudentMarks
exports.findAllActive = (req, res) => {
  StudentMarks.findAll({ where: { is_active: true } })
    .then((data) => {
      res
        .status(200)
        .json(success("Student Marks fetched successfully!", data));
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + ` Some error occurred while retrieving StudentMarks`,
            400
          )
        );
    });
};

// Calculate percentage
exports.calculatePercentage = (req, res) => {
  let percentage = Math.ceil(
    (req.body.marks_obtained / req.body.total_marks) * 100
  );
  res.status(200).json(
    success("Student Percentage calculated successfully!", {
      percentage: percentage,
    })
  );
};
