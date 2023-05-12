const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const BloodGroup = require('../models').BloodGroup;
const { success, errorResponse, validation } = require("../responseApi");

//const db = require("../models");

//const BloodGroup = db.bloodGroup;
const Op = require('sequelize').Op;

// Create and Save a new BloodGroup
exports.create = async (req, res) => {
    console.log("in controller bloodGroup");

    if (!req.body.name) {
      res.status(400).json(errorResponse("BloodGroup name cannot be empty!", 400));
      return;
    }
  
    // Create a BloodGroup
    const bloodGroup = {
      name: req.body.name,
      active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save BloodGroup in the database
    BloodGroup.create(bloodGroup)
      .then(data => {
        res.status(200).json(success("Bloodgroup created successfully!", data));
      })
      .catch(error => {
        res.status(400).json(errorResponse(error, 400));
    });
};

// Retrieve all BloodGroup from the database.
exports.findAll = (req, res) => {
  console.log(req.query.name);

  const name = req.query.name;
  var condition = name ? { name: { [Op.iLike]: `%${name}%` } } : null;

  BloodGroup.findAll({ where: condition })
    .then(data => {
      //res.send(data);
      res.status(200).json(success("Bloodgroups fetched successfully!", data));
    })
    .catch(error => {
      res.status(400).json(errorResponse(error, 400));
    });
};


// Find a single BloodGroup with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  BloodGroup.findByPk(id)
    .then(data => {
      if (data) {
        res.status(200).json(success("Bloodgroup details fetched successfully!", data));
      } else {
       
        res.status(400).json(errorResponse(`Cannot find BloodGroup with id=${id}.`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
};

// Update a BloodGroup by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  BloodGroup.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("BloodGroup was updated successfully/"));

      } else {
        res.status(400).json(errorResponse(`Cannot update BloodGroup with id=${id}. Maybe BloodGroup was not found or req.body is empty!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
};

// Delete a BloodGroup with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  BloodGroup.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("BloodGroup was deleted successfully/"));
      
      } else {
        res.status(400).json(errorResponse(`Cannot delete BloodGroup with id=${id}. Maybe BloodGroup was not found!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
};

// Delete all BloodGroup from the database.
exports.deleteAll = (req, res) => {
    BloodGroup.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.status(200).json(success(`${nums} BloodGroup were deleted successfully!`));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
};

// Find all active BloodGroup
exports.findAllActive = (req, res) => {
    BloodGroup.findAll({ where: { is_active: true } })
    .then(data => {
      //res.send(data);
      res.status(200).json(success("Bloodgroup Listed successfully!", data))
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
};
