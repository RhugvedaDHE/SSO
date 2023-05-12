const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const StudentMarks = require('../models').StudentMarks;
const { success, errorResponse, validation } = require("../responseApi");

//const db = require("../models");

//const StudentMarks = db.studentMarks;
const Op = require('sequelize').Op;

// Create and Save a new StudentMarks
exports.create = async (req, res) => {
    console.log("in controller studentMarks");

    if (!req.body.student_enrollment_id) {
      res.status(400).json(errorResponse("Student enrollment ID cannot be empty!", 400));
      return;
    }
  
    // Create a StudentMarks
   
    const studentMarks = {
      student_enrollment_id: req.body.student_enrollment_id,
      program_semester_id: req.body.program_semester_id,
      institute_programme_course_subject_id: req.body.institute_programme_course_subject_id,
      eval_type_id: req.body.eval_type_id,
      total_marks: req.body.total_marks,
      marks_obtained: req.body.marks_obtained,
      grade_obtained: req.body.grade_obtained,
      active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save StudentMarks in the database
    StudentMarks.create(studentMarks)
      .then(data => {
        res.status(200).json(success("Student Marks created successfully!", data));
      })
      .catch(err => {
        res.status(400).json(errorResponse(err, 400));
    });
};

// Retrieve all StudentMarks from the database.
exports.findAll = (req, res) => {
  //console.log(req.params.id);

  const studentEnrollmentId = req.params.id;
  var condition = studentEnrollmentId ? { student_enrollment_id: { [Op.eq]: studentEnrollmentId } } : null;

  StudentMarks.findAll({ where: condition })
    .then(data => {
      //res.status(200).json(success("StudentMarks fetched successfully!", data));

      //console.log(data);

      if (data) {
        res.status(200).json(success("Student Marks fetched successfully!", data));
      } else {
        res.status(400).json(errorResponse(`Cannot find Student's Marks`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
    
};


// Find a single StudentMarks with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  StudentMarks.findByPk(id)
    .then(data => {
      if (data) {
        res.status(200).json(success("Student Marks fetched successfully!", data));
      } else {
        res.status(400).json(errorResponse(`Cannot find Student Marks with id=${id}.`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Error retrieving Student Marks with id=" + id, 400));
    });
};

// Update a StudentMarks by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  const studentMarks = {
    student_enrollment_id: req.body.student_enrollment_id,
    program_semester_id: req.body.program_semester_id,
    institute_programme_course_subject_id: req.body.institute_programme_course_subject_id,
    eval_type_id: req.body.eval_type_id,
    total_marks: req.body.total_marks,
    marks_obtained: req.body.marks_obtained,
    grade_obtained: req.body.grade_obtained,
    active: req.body.active
  };

  StudentMarks.update(studentMarks, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Student Marks was updated successfully!"));
      } else {
        res.status(400).json(errorResponse(` Cannot update Student Marks with id=${id}. Maybe Student Marks was not found or req.body is empty!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Error updating Student Marks with id=" + id, 400));
    });
};

// Delete a StudentMarks with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  StudentMarks.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Student Marks was deleted successfully!"));
      } else {
        res.status(400).json(errorResponse(` Cannot delete StudentMarks with id=${id}. Maybe Student Marks was not found!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+` Cannot delete Student Marks with id=${id}`, 400));
    });
};

// Delete all StudentMarks from the database.
exports.deleteAll = (req, res) => {
    StudentMarks.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.status(200).json(success(nums+" Student Marks was deleted successfully!"));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+` Some error occurred while removing all StudentMarks`, 400));
     
    });
};

// Find all active StudentMarks
exports.findAllActive = (req, res) => {
    StudentMarks.findAll({ where: { is_active: true } })
    .then(data => {
      res.status(200).json(success("Student Marks fetched successfully!", data));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+` Some error occurred while retrieving StudentMarks`, 400));
    });
};
