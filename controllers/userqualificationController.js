const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const UserQualification = require('../models').UserQualification;
const { success, errorResponse, validation } = require("../responseApi");

//const db = require("../models");

//const UserQualification = db.userQualification;
const Op = require('sequelize').Op;

// Create and Save a new UserQualification
exports.create = async (req, res) => {
    console.log("in controller userQualification");

    if (!req.body.user_id) {
      res.status(400).json(errorResponse("User ID cannot be empty!", 400));
      return;
    }
  
    // Create a UserQualification
   
    const userQualification = {
      user_id: req.body.user_id,
      qualification_type_id: req.body.qualification_type_id,
      year: req.body.year,
    };

    // Save UserQualification in the database
    UserQualification.create(userQualification)
      .then(data => {
        res.status(200).json(success("User Qualifications created successfully!", data));
      })
      .catch(err => {
        res.status(400).json(errorResponse(err, 400));
    });
};

// Retrieve all UserQualification from the database.
exports.findAll = (req, res) => {
  //console.log(req.params.id);

  const userId = req.params.id;
  var condition = userId ? { user_id: { [Op.eq]: userId } } : null;

  UserQualification.findAll({ where: condition })
    .then(data => {
      //res.status(200).json(success("UserQualification fetched successfully!", data));

      //console.log(data);

      if (data) {
        res.status(200).json(success("User Qualifications fetched successfully!", data));
      } else {
        res.status(400).json(errorResponse(`Cannot find User's Qualifications`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
    
};


// Find a single UserQualification with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  UserQualification.findByPk(id)
    .then(data => {
      if (data) {
        res.status(200).json(success("User Qualifications fetched successfully!", data));
      } else {
        res.status(400).json(errorResponse(`Cannot find User Qualifications with id=${id}.`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Error retrieving User Qualifications with id=" + id, 400));
    });
};

// Update a UserQualification by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  const userQualification = {
    user_id: req.body.user_id,
    qualification_type_id: req.body.qualification_type_id,
    year: req.body.year,
  };

  UserQualification.update(userQualification, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("User Qualifications was updated successfully!"));
      } else {
        res.status(400).json(errorResponse(` Cannot update User Qualifications with id=${id}. Maybe User Qualifications was not found or req.body is empty!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Error updating User Qualifications with id=" + id, 400));
    });
};

// Delete a UserQualification with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  UserQualification.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("User Qualifications was deleted successfully!"));
      } else {
        res.status(400).json(errorResponse(` Cannot delete UserQualification with id=${id}. Maybe User Qualifications was not found!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+` Cannot delete User Qualifications with id=${id}`, 400));
    });
};

// Delete all UserQualification from the database.
exports.deleteAll = (req, res) => {
    UserQualification.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.status(200).json(success(nums+" User Qualifications was deleted successfully!"));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+` Some error occurred while removing all UserQualification`, 400));
     
    });
};

// Find all active UserQualification
exports.findAllActive = (req, res) => {
    UserQualification.findAll({ where: { is_active: true } })
    .then(data => {
      res.status(200).json(success("User Qualifications fetched successfully!", data));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+` Some error occurred while retrieving UserQualification`, 400));
    });
};
