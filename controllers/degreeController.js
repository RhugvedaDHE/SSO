const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');

const Degree = require('../models').Degree;
const { success, errorResponse, validation } = require("../responseApi");

//const db = require("../models");

//const Degree = db.degree;
const Op = require('sequelize').Op;

// Create and Save a new Degree
exports.create = async (req, res) => {
    console.log("in controller degree");

    if (!req.body.name) {
      res.status(400).json(errorResponse("Degree name cannot be empty!", 400));
      return;
    }
  
    // Create a Degree
    const degreedata = {
      name: req.body.name,
      active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save Degree in the database
    Degree.create(degreedata)
      .then(data => {
        res.status(200).json(success("Degrees created successfully!", data));
      })
      .catch(err => {
        res.status(400).json(errorResponse(err+" Some error occurred while creating the Degree.", 400));
    });
};

// Retrieve all Degree from the database.
exports.findAll = (req, res) => {
  console.log(req.query.name);

  const name = req.query.name;
  var condition = name ? { name: { [Op.iLike]: `%${name}%` } } : null;

  Degree.findAll({ where: condition })
    .then(data => {
      res.status(200).json(success("Degrees fetched successfully!", data));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
};


// Find a single Degree with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  Degree.findByPk(id)
    .then(data => {
      if (data) {
        res.status(200).json(success("Degrees details!", data));
      } else {
        res.status(400).json(errorResponse(` Cannot find Degree with id=${id}.`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Error retrieving Degree with id=" + id, 400));
    
    });
};

// Update a Degree by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  Degree.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Degree was updated successfully."));
      } else {
        res.status(400).json(errorResponse(`Cannot update Degree with id=${id}. Maybe Degree was not found or req.body is empty!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(`Error updating Degree with id=${id}`, 400));
    });
};

// Delete a Degree with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  Degree.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Degree was deleted successfully."));
      } else {
        res.status(400).json(errorResponse(`Cannot delete Degree with id=${id}`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(`Cannot delete Degree with id=${id}`, 400));
    });
};

// Delete all Degree from the database.
exports.deleteAll = (req, res) => {
    Degree.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.status(200).json(success(`${nums} Degree were deleted successfully!`));
    })
    .catch(err => {
      res.status(400).json(errorResponse(`${err} Cannot delete Degree with id=${id}`, 400));
    });
};

// Find all active Degree
exports.findAllActive = (req, res) => {
    Degree.findAll({ where: { is_active: true } })
    .then(data => {
      res.status(200).json(success("Active Degrees", data));
    })
    .catch(err => {
      res.status(400).json(errorResponse(`${err} `, 400));
    });
};
