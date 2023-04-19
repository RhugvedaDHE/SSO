const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const BloodGroup = require('../models').BloodGroup;

//const db = require("../models");

//const BloodGroup = db.bloodGroup;
const Op = require('sequelize').Op;
const { success, errorResponse, validation } = require("../responseApi");

// Create and Save a new BloodGroup
exports.create = async (req, res) => {
    console.log("in controller bloodGroup");

    if (!req.body.name) {
      res.status(400).send({
        message: "BloodGroup name cannot be empty!"
      });
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
         res.status(200).json(success("Blood Group created successfully!"));
      })
      .catch(err => {
        res.status(400).json(success("Could not create Blood Group!"));
    });
};

// Retrieve all BloodGroup from the database.
exports.findAll = (req, res) => {
  console.log(req.query.name);

  const name = req.query.name;
  var condition = name ? { name: { [Op.iLike]: `%${name}%` } } : null;

  BloodGroup.findAll({ where: condition })
    .then(data => {
      res.status(200).json(success("Blood Group fetched successfully!", data));
    })
    .catch(err => {
      res.status(400).json(success("Could not create Blood Group!"));
    });
};


// Find a single BloodGroup with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  BloodGroup.findByPk(id)
    .then(data => {
      if (data) {
        res.send(data);
      } else {
        res.status(404).send({
          message: `Cannot find BloodGroup with id=${id}.`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving BloodGroup with id=" + id
      });
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
        res.send({
          message: "BloodGroup was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update BloodGroup with id=${id}. Maybe BloodGroup was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating BloodGroup with id=" + id
      });
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
        res.send({
          message: "BloodGroup was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete BloodGroup with id=${id}. Maybe BloodGroup was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete BloodGroup with id=" + id
      });
    });
};

// Delete all BloodGroup from the database.
exports.deleteAll = (req, res) => {
    BloodGroup.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} BloodGroup were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all BloodGroup."
      });
    });
};

// Find all active BloodGroup
exports.findAllActive = (req, res) => {
    BloodGroup.findAll({ where: { is_active: true } })
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
