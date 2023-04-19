const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const Gender = require('../models').Gender;
const { success, errorResponse, validation } = require("../responseApi");

//const db = require("../models");

//const Gender = db.gender;
const Op = require('sequelize').Op;

// Create and Save a new Gender
exports.create = async (req, res) => {
    console.log("in controller gender");

    if (!req.body.name) {
      res.status(400).send({
        message: "Gender name cannot be empty!"
      });
      return;
    }
  
    // Create a Gender
    const gender = {
      name: req.body.name,
      active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save Gender in the database
    Gender.create(gender)
      .then(data => {
        res.status(200).json(success("Gender created successfully!", data));
      })
      .catch(err => {
        res.status(400).json(errorResponse(error, 400));
    });
};

// Retrieve all Gender from the database.
exports.findAll = (req, res) => {
  console.log(req.query.name);

  const name = req.query.name;
  var condition = name ? { name: { [Op.iLike]: `%${name}%` } } : null;

  Gender.findAll({ where: condition })
    .then(data => {
      //res.send(data);
      res.status(200).json(success("Gender fetched successfully!", data))
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving degrees."
      });
    });
};


// Find a single Gender with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  Gender.findByPk(id)
    .then(data => {
      if (data) {
        res.send(data);
      } else {
        res.status(404).send({
          message: `Cannot find Gender with id=${id}.`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving Gender with id=" + id
      });
    });
};

// Update a Gender by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  Gender.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Gender was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update Gender with id=${id}. Maybe Gender was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating Gender with id=" + id
      });
    });
};

// Delete a Gender with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  Gender.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Gender was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete Gender with id=${id}. Maybe Gender was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete Gender with id=" + id
      });
    });
};

// Delete all Gender from the database.
exports.deleteAll = (req, res) => {
    Gender.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} Gender were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all Gender."
      });
    });
};

// Find all active Gender
exports.findAllActive = (req, res) => {
    Gender.findAll({ where: { is_active: true } })
    .then(data => {
      //res.send(data);
      res.status(200).json(success("Gender Listed successfully!", data))
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving Degrees."
      });
    });
};
