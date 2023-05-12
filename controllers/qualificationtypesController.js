const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const QualificationTypes = require('../models').QualificationTypes;
const { success, errorResponse, validation } = require("../responseApi");

//const db = require("../models");

//const QualificationTypes = db.qualificationTypes;
const Op = require('sequelize').Op;

// Create and Save a new QualificationTypes
exports.create = async (req, res) => {
    console.log("in controller qualificationTypes");

    if (!req.body.title) {
      res.status(400).json(errorResponse("QualificationTypes title cannot be empty!", 400));
      return;
    }
  
    // Create a QualificationTypes
    const qualificationTypes = {
      title: req.body.title,
      active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save QualificationTypes in the database
    QualificationTypes.create(qualificationTypes)
      .then(data => {
        res.status(200).json(success("Bloodgroup created successfully!", data));
      })
      .catch(error => {
        res.status(400).json(errorResponse(error, 400));
    });
};

// Retrieve all QualificationTypes from the database.
exports.findAll = (req, res) => {
  console.log(req.query.title);

  const title = req.query.title;
  var condition = title ? { title: { [Op.iLike]: `%${title}%` } } : null;

  QualificationTypes.findAll({ where: condition })
    .then(data => {
      //res.send(data);
      res.status(200).json(success("Qualification types fetched successfully!", data));
    })
    .catch(error => {
      res.status(400).json(errorResponse(error, 400));
    });
};


// Find a single QualificationTypes with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  QualificationTypes.findByPk(id)
    .then(data => {
      if (data) {
        res.status(200).json(success("Qualification Type details fetched successfully!", data));
      } else {
       
        res.status(400).json(errorResponse(`Cannot find QualificationTypes with id=${id}.`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
};

// Update a QualificationTypes by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  QualificationTypes.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("QualificationTypes was updated successfully/"));

      } else {
        res.status(400).json(errorResponse(`Cannot update QualificationTypes with id=${id}. Maybe QualificationTypes was not found or req.body is empty!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
};

// Delete a QualificationTypes with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  QualificationTypes.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("QualificationTypes was deleted successfully/"));
      
      } else {
        res.status(400).json(errorResponse(`Cannot delete QualificationTypes with id=${id}. Maybe QualificationTypes was not found!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
};

// Delete all QualificationTypes from the database.
exports.deleteAll = (req, res) => {
    QualificationTypes.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.status(200).json(success(`${nums} QualificationTypes were deleted successfully!`));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
};

// Find all active QualificationTypes
exports.findAllActive = (req, res) => {
    QualificationTypes.findAll({ where: { is_active: true } })
    .then(data => {
      //res.send(data);
      res.status(200).json(success("Qualification Types Listed successfully!", data))
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
};
