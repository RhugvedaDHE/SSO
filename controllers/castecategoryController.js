const jwt = require('jsonwebtoken');
require('dotenv').config();
const bcrypt = require('bcryptjs');
const db = require('../models');
const CasteCategory = require('../models').CasteCategory;

const Op = require('sequelize').Op;
const { success, errorResponse, validation } = require("../responseApi");

// Create and Save a new CasteCategory
exports.create = async (req, res) => {
    console.log("in controller casteCategory");

    if (!req.body.name) {
      res.status(400).json(success("Name is required!"));
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
        res.status(200).json(success("Cast category created successfully!"));
      })
      .catch(err => {
        res.status(400).json(success("Could not create Cast Category!"));
    });
};

// Retrieve all CasteCategory from the database.
exports.findAll = (req, res) => {
  console.log(req.query.name);

  const name = req.query.name;
  var condition = name ? { name: { [Op.iLike]: `%${name}%` } } : null;

  CasteCategory.findAll({ where: condition })
    .then(data => {
      res.status(200).json(success("Cast category fetched successfully!"));
    })
    .catch(err => {
      res.status(400).json(success("Could not fetch Cast Categories!"));
    });
};


// Find a single CasteCategory with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  CasteCategory.findByPk(id)
    .then(data => {
      if (data) {
        res.send(data);
      } else {
        res.status(404).send({
          message: `Cannot find CasteCategory with id=${id}.`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving CasteCategory with id=" + id
      });
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
        res.send({
          message: "CasteCategory was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update CasteCategory with id=${id}. Maybe CasteCategory was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating CasteCategory with id=" + id
      });
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
        res.send({
          message: "CasteCategory was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete CasteCategory with id=${id}. Maybe CasteCategory was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete CasteCategory with id=" + id
      });
    });
};

// Delete all CasteCategory from the database.
exports.deleteAll = (req, res) => {
    CasteCategory.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} CasteCategory were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all CasteCategory."
      });
    });
};

// Find all active CasteCategory
exports.findAllActive = (req, res) => {
    CasteCategory.findAll({ where: { is_active: true } })
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
