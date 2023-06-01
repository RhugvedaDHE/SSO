const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const GuardianType = require('../models').GuardianType;
const { success, errorResponse, validation } = require("../responseApi");

//const db = require("../models");

//const GuardianType = db.guardianType;
const Op = require('sequelize').Op;

// Create and Save a new GuardianType
exports.create = async (req, res) => {
    console.log("in controller guardianType");

    if (!req.body.name) {
      res.status(400).json(errorResponse("Guardian Type name cannot be empty!", 400));
      return;
    }
  
    // Create a GuardianType
    const guardianType = {
      name: req.body.name,
      active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save GuardianType in the database
    GuardianType.create(guardianType)
      .then(data => {
        res.status(200).json(success("Guardian created successfully!", data));
      })
      .catch(err => {
        res.status(400).json(errorResponse(err, 400));
    });
};

// Retrieve all GuardianType from the database.
exports.findAll = (req, res) => {
  console.log("hiiiii")
  GuardianType.findAll()
    .then(data => {
      res.status(200).json(success("Guardians fetched successfully!", data));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
};


// Find a single GuardianType with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  GuardianType.findByPk(id)
    .then(data => {
      if (data) {
        res.status(200).json(success("Guardian fetched successfully!", data));
      } else {
        res.status(400).json(errorResponse(`Cannot find GuardianType with id=${id}.`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Error retrieving GuardianType with id=" + id, 400));
    });
};

// Update a GuardianType by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  GuardianType.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Guardian was updated successfully!"));
      } else {
        res.status(400).json(errorResponse(` Cannot update GuardianType with id=${id}. Maybe GuardianType was not found or req.body is empty!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Error updating GuardianType with id=" + id, 400));
    });
};

// Delete a GuardianType with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  GuardianType.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Guardian was deleted successfully!"));
      } else {
        res.status(400).json(errorResponse(` Cannot delete GuardianType with id=${id}. Maybe GuardianType was not found!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+` Cannot delete GuardianType with id=${id}`, 400));
    });
};

// Delete all GuardianType from the database.
exports.deleteAll = (req, res) => {
    GuardianType.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.status(200).json(success(nums+" Guardians was deleted successfully!"));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+` Some error occurred while removing all GuardianType`, 400));
     
    });
};

// Find all active GuardianType
exports.findAllActive = (req, res) => {
    GuardianType.findAll({ where: { is_active: true } })
    .then(data => {
      res.status(200).json(success("Guardians fetched successfully!", data));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+` Some error occurred while retrieving GuardianType`, 400));
    });
};
