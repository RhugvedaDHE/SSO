const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const CasteCategory = require('../models').CasteCategory;
const { success, errorResponse, validation } = require("../responseApi");

//const db = require("../models");

//const CasteCategory = db.casteCategory;
const Op = require('sequelize').Op;

// Create and Save a new CasteCategory
exports.create = async (req, res) => {
    console.log("in controller casteCategory");

    if (!req.body.name) {
      res.status(400).send({
        message: "CasteCategory name cannot be empty!"
      });
      
      return;
    }
  
    // Create a CasteCategory
    const casteCategory = {
      name: req.body.name,
      active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save CasteCategory in the database
    CasteCategory.create(casteCategory)
      .then(data => {
        //res.send(data);
        res.status(200).json(success("Caste category created successfully!", data));
      })
      .catch(error => {
        res.status(400).json(errorResponse(error, 400));
    });
};

// Retrieve all CasteCategory from the database.
exports.findAll = (req, res) => {
  console.log(req.query.name);

  const name = req.query.name;
  var condition = name ? { name: { [Op.iLike]: `%${name}%` } } : null;

  CasteCategory.findAll({ where: condition })
    .then(data => {
      //res.send(data);
      res.status(200).json(success("Caste categories fetched successfully!", data));
    })
    .catch(error => {
      res.status(400).json(errorResponse(error, 400));
    });
};


// Find a single CasteCategory with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  CasteCategory.findByPk(id)
    .then(data => {
      if (data) {
        //res.send(data);
        res.status(200).json(success("Caste category fetched successfully!", data));
      } else {
        res.status(400).json(errorResponse("Cannot find caste category.", 400));
      }
    })
    .catch(error => {
      res.status(400).json(errorResponse(error, 400));
    });
};

// Update a CasteCategory by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  CasteCategory.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Caste category was updated successfully!"));
      } else {
        res.status(400).json(errorResponse("Please check if caste exist, "+error, 400));
      }
    })
    .catch(error => {
      res.status(400).json(errorResponse(error, 400));
    });
};

// Delete a CasteCategory with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  CasteCategory.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Caste Category deleted successfully!!"));
      } else {
        res.status(400).json(errorResponse(error, 400));
      }
    })
    .catch(error => {
      res.status(400).json(errorResponse(error, 400));
    });
};

// Delete all CasteCategory from the database.
exports.deleteAll = (req, res) => {
    CasteCategory.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.status(200).json(success("Caste Categories deleted successfully!!", data));
      
    })
    .catch(error => {
      res.status(400).json(errorResponse(error, 400));
    });
};

// Find all active CasteCategory
exports.findAllActive = (req, res) => {
    CasteCategory.findAll({ where: { is_active: true } })
    .then(data => {
      //res.send(data);
      res.status(200).json(success("Caste categories fetched successfully!", data))
    })
    .catch(error => {
      res.status(400).json(errorResponse(error, 400));
    });
};