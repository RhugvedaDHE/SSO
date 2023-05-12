const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const InstituteProgrammeCourseSubject = require('../models').InstituteProgrammeCourseSubject;
//const Programme = require('../models').Programme;
//const Semester = require('../models').Semester;

const { success, errorResponse, validation } = require("../responseApi");
const { empty } = require('uuidv4');

//const db = require("../models");

//const InstituteProgrammeCourseSubject = db.instituteProgrammeCourseSubject;
const Op = require('sequelize').Op;

// Create and Save a new InstituteProgrammeCourseSubject
exports.create = async (req, res) => {
    console.log("in controller instituteProgrammeCourseSubject");

    if (!req.body.institute_program_id) {
      res.status(400).send({
        message: "institute_program_id cannot be empty!"
      });
      return;
    }

    if (!req.body.program_subject_id) {
        res.status(400).send({
          message: "program_subject_id cannot be empty!"
        });
        return;
      }
  
    // Create a InstituteProgrammeCourseSubject
    const instituteProgrammeCourseSubject = {
      institute_program_id: req.body.institute_program_id,
      program_subject_id: req.body.program_subject_id,
      program_course_id: req.body.program_course_id,
      program_semester_id: req.body.program_semester_id,
      active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save InstituteProgrammeCourseSubject in the database
    InstituteProgrammeCourseSubject.create(instituteProgrammeCourseSubject)
      .then(data => {
        res.send(data);
      })
      .catch(err => {
        res.status(500).send({
          message:
            err.message || "Some error occurred while creating the InstituteProgrammeCourseSubject."
        });
    });
};

// Retrieve all InstituteProgrammeCourseSubject from the database.
exports.findAll = async function(req,res){
  const data=await InstituteProgrammeCourseSubject.findAll({
      attributes:['semester_id'],
      where:{
        program_id: req.body.program_id,
        active: true,
      }
  });

  if(data){
     
      var jsondata=[]
      for(const d of data){
           let userdetails= await Semester.findOne({
              attributes:['name'],
              where:{
                  id:d.semester_id
              }
          });
         
        
         jsondata.push({"semester_id":d.semester_id,"name":userdetails.name})
         
      }
      return  res.status(200).json(success("Program semester fetched successfully!", jsondata))
  }else{
      return res.status(400).json(errorResponse(error, 400));
  }
 
}


// Find a single InstituteProgrammeCourseSubject with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  InstituteProgrammeCourseSubject.findByPk(id)
    .then(data => {
      if (data) {
        res.send(data);
      } else {
        res.status(404).send({
          message: `Cannot find InstituteProgrammeCourseSubject with id=${id}.`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving InstituteProgrammeCourseSubject with id=" + id
      });
    });
};

// Update a InstituteProgrammeCourseSubject by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  InstituteProgrammeCourseSubject.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "InstituteProgrammeCourseSubject was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update InstituteProgrammeCourseSubject with id=${id}. Maybe InstituteProgrammeCourseSubject was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating InstituteProgrammeCourseSubject with id=" + id
      });
    });
};

// Delete a InstituteProgrammeCourseSubject with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  InstituteProgrammeCourseSubject.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "InstituteProgrammeCourseSubject was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete InstituteProgrammeCourseSubject with id=${id}. Maybe InstituteProgrammeCourseSubject was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete InstituteProgrammeCourseSubject with id=" + id
      });
    });
};

// Delete all InstituteProgrammeCourseSubject from the database.
exports.deleteAll = (req, res) => {
    InstituteProgrammeCourseSubject.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} InstituteProgrammeCourseSubject were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all InstituteProgrammeCourseSubject."
      });
    });
};

// Find all active InstituteProgrammeCourseSubject
exports.findAllActive = (req, res) => {
    InstituteProgrammeCourseSubject.findAll({ where: { is_active: true } })
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving Degrees."
      });
    });
};

