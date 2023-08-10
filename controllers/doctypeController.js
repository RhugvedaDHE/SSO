const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const DocumentType = require('../models').DocumentType;
const { success, errorResponse, validation } = require("../responseApi");
const { DATE } = require('sequelize');

//const db = require("../models");

//const DocumentType = db.gender;
const Op = require('sequelize').Op;

// Create and Save a new DocumentType
exports.create = async (req, res) => {
    console.log("in controller doctype");

    if (!req.body.name) {
      var error = "DocumentType name cannot be empty!";
      res.status(400).json(errorResponse(error, 400));

      return;
    }
  
    // Create a DocumentTypefindAllActive
    const doctype = {
      name: req.body.name,
      ParentId: req.body.parentId,
      is_active: true,
      createdAt:new Date(),
      updatedAt:null,
    };

    // Save DocumentType in the database
    DocumentType.create(doctype)
      .then(data => {
        res.status(200).json(success("DocumentType created successfully!", data));
      })
      .catch(error => {
        res.status(400).json(errorResponse(error, 400));
    });
};

// Find all active parent doc types
exports.getParentDocTypes = async (req, res) => {
  console.log("heyyyyy")
  await DocumentType.findAll({ where: { ParentId: 0 } })
  .then(data => {
    //res.send(data);
    res.status(200).json(success("Parent doc types Listed successfully!", data))
  })
  .catch(error => {
    res.status(400).json(errorResponse(error, 400));
  });
}

// Retrieve all DocumentType from the database.
exports.findAll = (req, res) => {
  console.log(req.params.id);

  const parentId = req.params.id;
  var condition = parentId ? { ParentId: { [Op.eq]: `${parentId}` } } : null;

  DocumentType.findAll({ where: condition })
    .then(data => {
      //res.send(data);
      res.status(200).json(success("DocumentType fetched successfully!", data));
    })
    .catch(error => {
        res.status(400).json(errorResponse(error, 400));
    });
};


// Find a single DocumentType with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  DocumentType.findByPk(id)
    .then(data => {
      if (data) {
        res.send(data);
      } else {
        var error = `Cannot find DocumentType with id=${id}.`;
        res.status(400).json(errorResponse(error, 400));
      }
    })
    .catch(error => {
        res.status(400).json(errorResponse(error, 400));
    });
};

// Update a DocumentType by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  DocumentType.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("DocumentType was updated successfully.!"));
      } else {
        const error = "Cannot update DocumentType. Maybe DocumentType was not found or req.body is empty!";
        res.status(400).json(errorResponse(error, 400));
      }
    })
    .catch(error => {
        res.status(400).json(errorResponse(error, 400));
    });
};

// Delete a DocumentType with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  DocumentType.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("DocumentType was deleted successfully.!"));
      } else {
        const error = `Cannot delete DocumentType with id=${id}. Maybe DocumentType was not found!`;
        res.status(400).json(errorResponse(error, 400));
      }
    })
    .catch(err => {
      //const error = `Cannot delete DocumentType with id=${id}. Maybe DocumentType was not found!`+error;
      res.status(400).json(errorResponse(err, 400));
     
    });
};

// Delete all DocumentType from the database.
exports.deleteAll = (req, res) => {
    DocumentType.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.status(200).json(success(`${nums}DocumentType was deleted successfully.!`));
    })
    .catch(error => {
      res.status(400).json(errorResponse(error, 400));
    });
};

// Find all active DocumentType
exports.findAllActive = (req, res) => {
    DocumentType.findAll({ where: 
      { is_active: true, 
        ParentId: {
          [Op.ne]: 0,
        },
      } 
    })
    .then(data => {
      //res.send(data);
      res.status(200).json(success("DocumentType Listed successfully!", data))
    })
    .catch(error => {
      res.status(400).json(errorResponse(error, 400));
    });
};
