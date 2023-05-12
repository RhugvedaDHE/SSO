const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const Stream = require('../models').Stream;
const { success, errorResponse, validation } = require("../responseApi");

//const db = require("../models");

//const Stream = db.stream;
const Op = require('sequelize').Op;

// Create and Save a new Stream
exports.create = async (req, res) => {
    console.log("in controller stream");

    if (!req.body.name) {
      var error = "Stream name cannot be empty!";
      res.status(400).json(errorResponse(error, 400));

      return;
    }
  
    // Create a Stream
    const stream = {
      name: req.body.name,
      active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save Stream in the database
    Stream.create(stream)
      .then(data => {
        res.status(200).json(success("Stream created successfully!", data));
      })
      .catch(error => {
        res.status(400).json(errorResponse(error, 400));
    });
};

// Retrieve all Stream from the database.
exports.findAll = (req, res) => {
  console.log(req.query.name);

  const name = req.query.name;
  var condition = name ? { name: { [Op.iLike]: `%${name}%` } } : null;

  Stream.findAll({ where: condition })
    .then(data => {
      //res.send(data);
      res.status(200).json(success("Stream fetched successfully!", data));
    })
    .catch(error => {
        res.status(400).json(errorResponse(error, 400));
    });
};


// Find a single Stream with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  Stream.findByPk(id)
    .then(data => {
      if (data) {
        res.send(data);
      } else {
        var error = `Cannot find Stream with id=${id}.`;
        res.status(400).json(errorResponse(error, 400));
      }
    })
    .catch(error => {
        res.status(400).json(errorResponse(error, 400));
    });
};

// Update a Stream by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  Stream.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Stream was updated successfully.!"));
      } else {
        const error = "Cannot update Stream. Maybe Stream was not found or req.body is empty!";
        res.status(400).json(errorResponse(error, 400));
      }
    })
    .catch(error => {
        res.status(400).json(errorResponse(error, 400));
    });
};

// Delete a Stream with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  Stream.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Stream was deleted successfully.!"));
      } else {
        const error = `Cannot delete Stream with id=${id}. Maybe Stream was not found!`;
        res.status(400).json(errorResponse(error, 400));
      }
    })
    .catch(err => {
      //const error = `Cannot delete Stream with id=${id}. Maybe Stream was not found!`+error;
      res.status(400).json(errorResponse(err, 400));
     
    });
};

// Delete all Stream from the database.
exports.deleteAll = (req, res) => {
    Stream.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.status(200).json(success(`${nums}Stream was deleted successfully.!`));
    })
    .catch(error => {
      res.status(400).json(errorResponse(error, 400));
    });
};

// Find all active Stream
exports.findAllActive = (req, res) => {
    Stream.findAll({ where: { is_active: true } })
    .then(data => {
      //res.send(data);
      res.status(200).json(success("Stream Listed successfully!", data))
    })
    .catch(error => {
      res.status(400).json(errorResponse(error, 400));
    });
};
