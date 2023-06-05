const jwt = require("jsonwebtoken");
require("dotenv").config();

const bcrypt = require("bcryptjs");
const db = require("../models");
//const uploadFile = require("../middleware/upload");
const StudentGuardian = require("../models").StudentGuardian;
const StudentEnrollment = require("../models").StudentEnrollment;
const { success, errorResponse, validation } = require("../responseApi");

//const db = require("../models");

//const StudentGuardian = db.studentGuardian;
const Op = require("sequelize").Op;

// Create and Save a new StudentGuardian
exports.create = async (req, res) => {
  console.log("in controller studentGuardian", req.body);

  await StudentEnrollment.findOne({
    attributes: ["id"],
    where: { user_id: req.user.id },
  }).then((studentEnrollment) => {
   
    console.log("SE", studentEnrollment)
    const parentDetails = {
      guardian_type_id: req.body.type,
      student_enrollment_id: studentEnrollment.id,
      first_name: req.body.firstName,
      last_name: req.body.lastName,
      phone: req.body.phone,
      email: req.body.email,
      occupation: req.body.occupation,
      designation: req.body.designation,
      word_address: req.body.wordAddress,
      annual_income: req.body.annualIncome,
      is_deceased: req.body.isDeceased,
      is_employed: req.body.isEmployed,
    };
    
    // Save mother details in the database   
      StudentGuardian.findOne({      
        where: {
          student_enrollment_id: studentEnrollment.id,
          guardian_type_id: req.body.type 
        },
      }
    ).then((parent) =>{
      if(parent){
        StudentGuardian.update(parentDetails,{
          where: {
            guardian_type_id: req.body.type,
            student_enrollment_id: studentEnrollment.id
          }
        })
        .then((data) => {
          res.status(200).json(success("Parent details updated successfully!", data));
        })
      }
      else{
        StudentGuardian.create(parentDetails)
        .then((data) => {
          res.status(200).json(success("Parent details created successfully!", data));
        })
      }    
    })    
  }).catch((err) => {
    res.status(400).json(errorResponse(err, 400));
  });
};

// Retrieve all StudentGuardian from the database.
exports.findAll = async (req, res) => {
  await StudentEnrollment.findOne({
    attributes: ["id"],
    where: { user_id: req.user.id },
  }).then((studentEnrollment) => {

    const studentEnrollmentId = studentEnrollment.id;
    var condition = studentEnrollmentId
      ? { student_enrollment_id: { [Op.eq]: studentEnrollmentId } }
      : null;

    StudentGuardian.findAll({ where: condition })
      .then((data) => {
        //res.status(200).json(success("Guardians fetched successfully!", data));

        //console.log(data);

        if (data) {
          res.status(200).json(success("Guardians fetched successfully!", data));
        } else {
          res
            .status(400)
            .json(errorResponse(`Cannot find Student's Guardians`, 400));
        }
      })
      .catch((err) => {
        res.status(400).json(errorResponse(err, 400));
      });
    });
};

// Find a single StudentGuardian with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  StudentGuardian.findByPk(id)
    .then((data) => {
      if (data) {
        res.status(200).json(success("Guardian fetched successfully!", data));
      } else {
        res
          .status(400)
          .json(
            errorResponse(`Cannot find StudentGuardian with id=${id}.`, 400)
          );
      }
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + " Error retrieving StudentGuardian with id=" + id,
            400
          )
        );
    });
};

// Update a StudentGuardian by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  const studentGuardian = {
    student_enrollment_id: req.body.student_enrollment_id,
    guardian_type_id: req.body.guardian_type_id,
    first_name: req.body.first_name,
    last_name: req.body.last_name,
    phone: req.body.phone,
    email: req.body.email,
    aadhar_card_no: req.body.aadhar_card_number,
    occupation: req.body.occupation,
    designation: req.body.designation,
    work_address: req.body.work_address,
    annual_income: req.body.annual_income,
    active: req.body.active,
  };

  StudentGuardian.update(studentGuardian, {
    where: { id: id },
  })
    .then((num) => {
      if (num == 1) {
        res.status(200).json(success("Guardian was updated successfully!"));
      } else {
        res
          .status(400)
          .json(
            errorResponse(
              ` Cannot update StudentGuardian with id=${id}. Maybe StudentGuardian was not found or req.body is empty!`,
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
            err + " Error updating StudentGuardian with id=" + id,
            400
          )
        );
    });
};

// Delete a StudentGuardian with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  StudentGuardian.destroy({
    where: { id: id },
  })
    .then((num) => {
      if (num == 1) {
        res.status(200).json(success("Guardian was deleted successfully!"));
      } else {
        res
          .status(400)
          .json(
            errorResponse(
              ` Cannot delete StudentGuardian with id=${id}. Maybe StudentGuardian was not found!`,
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
            err + ` Cannot delete StudentGuardian with id=${id}`,
            400
          )
        );
    });
};

// Delete all StudentGuardian from the database.
exports.deleteAll = (req, res) => {
  StudentGuardian.destroy({
    where: {},
    truncate: false,
  })
    .then((nums) => {
      res
        .status(200)
        .json(success(nums + " Guardians was deleted successfully!"));
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + ` Some error occurred while removing all StudentGuardian`,
            400
          )
        );
    });
};

// Find all active StudentGuardian
exports.findAllActive = (req, res) => {
  StudentGuardian.findAll({ where: { is_active: true } })
    .then((data) => {
      res.status(200).json(success("Guardians fetched successfully!", data));
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + ` Some error occurred while retrieving StudentGuardian`,
            400
          )
        );
    });
};
