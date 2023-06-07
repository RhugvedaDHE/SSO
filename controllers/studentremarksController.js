const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const StudentRemarks = require('../models').StudentRemarks;
const { success, errorResponse, validation } = require("../responseApi");

//const db = require("../models");

//const StudentRemarks = db.studentRemarks;
const Op = require('sequelize').Op;

// Create and Save a new StudentRemarks
exports.create = async (req, res) => {
    console.log("in controller studentRemarks");

    if (!req.body.student_enrollment_id) {
      res.status(400).json(errorResponse("Student enrollment ID cannot be empty!", 400));
      return;
    }
  
    // Create a StudentRemarks
   
    const studentRemarks = {
      student_enrollment_id: req.body.student_enrollment_id,
      section: req.body.section,
      remarks: req.body.remarks,
      user_id: req.body.owner_id,
      role_type_id: req.body.owner_type_id,
      active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save StudentRemarks in the database
    StudentRemarks.create(studentRemarks)
      .then(data => {
        res.status(200).json(success("Student Remarks created successfully!", data));
      })
      .catch(err => {
        res.status(400).json(errorResponse(err, 400));
    });
};

// Retrieve all StudentRemarks from the database.
exports.findAll = (req, res) => {
  //console.log(req.params.id);

  const studentEnrollmentId = req.params.id;
  var condition = studentEnrollmentId ? { student_enrollment_id: { [Op.eq]: studentEnrollmentId } } : null;

  StudentRemarks.findAll({ where: condition })
    .then(data => {
      //res.status(200).json(success("StudentRemarks fetched successfully!", data));

      //console.log(data);

      if (data) {
        res.status(200).json(success("Student Remarks fetched successfully!", data));
      } else {
        res.status(400).json(errorResponse(`Cannot find Student's Remarks`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
    
};


// Find a single StudentRemarks with an id
exports.findOne = async (req, res) => {
  const id = req.params.id;

  StudentRemarks.findByPk(id)
    .then(data => {
        //get owner details
        /*let ownerDetails = UserPersonalDetails.findOne({
            attributes:['firstname','lastname'],
            where:{
                user_id:data.user_id
            }
        });*/

      if (data) {
        res.status(200).json(success("Student Remarks fetched successfully!", data));
      } else {
        res.status(400).json(errorResponse(`Cannot find Student Remarks with id=${id}.`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Error retrieving Student Remarks with id=" + id, 400));
    });
};

// Update a StudentRemarks by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  const studentRemarks = {
    student_enrollment_id: req.body.student_enrollment_id,
    section: req.body.section,
    remarks: req.body.remarks,
    owner_id: req.body.owner_id,
    owner_type_id: req.body.owner_type_id,
    active: req.body.active ? req.body.active : true,
  };

  StudentRemarks.update(studentRemarks, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Student Remarks was updated successfully!"));
      } else {
        res.status(400).json(errorResponse(` Cannot update Student remarks with id=${id}. Maybe Student remarks was not found or req.body is empty!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Error updating Student remarks with id=" + id, 400));
    });
};

// Delete a StudentRemarks with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  StudentRemarks.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Student Remarks was deleted successfully!"));
      } else {
        res.status(400).json(errorResponse(` Cannot delete StudentRemarks with id=${id}. Maybe Student Remarks was not found!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+` Cannot delete Student Remarks with id=${id}`, 400));
    });
};

// Delete all StudentRemarks from the database.
exports.deleteAll = (req, res) => {
    StudentRemarks.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.status(200).json(success(nums+" Student Remarks was deleted successfully!"));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+` Some error occurred while removing all StudentRemarks`, 400));
     
    });
};

// Find all active StudentRemarks
exports.findAllActive = (req, res) => {
    StudentRemarks.findAll({ where: { is_active: true } })
    .then(data => {
      res.status(200).json(success("Student Remarks fetched successfully!", data));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+` Some error occurred while retrieving StudentRemarks`, 400));
    });
};
