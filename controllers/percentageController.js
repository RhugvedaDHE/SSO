const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const Percentage = require('../models').Percentage;
const { success, errorResponse, validation } = require("../responseApi");

//const db = require("../models");

//const Percentage = db.percentage;
const Op = require('sequelize').Op;

// Create and Save a new Percentage
exports.create = async (req, res) => {
    console.log("in controller percentage");

    if (!req.body.case) {
      res.status(400).json(errorResponse("Percentage name cannot be empty!", 400));
      return;
    }
  
    // Create a Percentage
    const percentage = {
      case: req.body.case,
      active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save Percentage in the database
    Percentage.create(percentage)
      .then(data => {
        res.status(200).json(success("Percentage created successfully!", data));
      })
      .catch(err => {
        res.status(400).json(errorResponse(err+" Some error occurred while creating the Percentage.", 400));
    });
};

// Retrieve all Percentage from the database.
exports.findAll = (req, res) => {
  console.log(req.query.name);

  const name = req.query.name;
  var condition = name ? { name: { [Op.iLike]: `%${name}%` } } : null;

  Percentage.findAll({ where: condition })
    .then(data => {
      res.status(200).json(success("Percentage fetched successfully!", data));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Some error occurred while creating the Percentage.", 400));
    });
};


// Find a single Percentage with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  Percentage.findByPk(id)
    .then(data => {
      if (data) {
        res.status(200).json(success("Percentage fetched successfully!", data));
      } else {
        res.status(400).json(errorResponse(" Some error occurred while creating the Percentage.", 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Error retrieving Percentage with id=" + id, 400));
    });
};

// Update a Percentage by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  Percentage.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Percentage updated successfully!"));
      } else {
        res.status(400).json(errorResponse(`Cannot update Percentage with id=${id}. Maybe Percentage was not found or req.body is empty!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse("Error updating Percentage with id=" + id, 400));
    });
};

// Delete a Percentage with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  Percentage.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Percentage was deleted successfully!"));
      } else {
        res.status(400).json(errorResponse("Cannot delete Percentage with id=" + id, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Cannot delete Percentage with id=" + id, 400));
    });
};

// Delete all Percentage from the database.
exports.deleteAll = (req, res) => {
    Percentage.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.status(200).json(success(`${nums} Percentage were deleted successfully!`));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Some error occurred while removing all Percentage.", 400));
    });
};

// Find all active Percentage
exports.findAllActive = (req, res) => {
    Percentage.findAll({ where: { active: true } })
    .then(data => {
      res.status(200).json(success("Active Percentages retrived successfully!", data));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Some error occurred while retrieving all Percentages.", 400));
    });
};
