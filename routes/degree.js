const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const degree = require('../controllers/degreeController');
//var multer = require('multer');


console.log("In degree routes");

// Create a new Degree
router.post("/",[
    check('name').not().isEmpty().withMessage('Degree name is required'),
], validate, degree.create);

// Retrieve all degree
router.get("/all", degree.findAll);

// Retrieve all published degree
router.get("/active", degree.findAllActive);

// Retrieve a single Degree with id
router.post("/:id", degree.findOne);

// Update a Degree with id
router.put("/:id", degree.update);

// Delete a Degree with id
router.delete("/:id", degree.delete);

// Create a new Degree
router.delete("/", degree.deleteAll);
module.exports = router;


/*
module.exports = app => {
    const degree = require("../controllers/degree");
  
    var router = require("express").Router();
  
    console.log("In degree routes");

    // Create a new Degree
    router.post("/", degree.create);
  
    // Retrieve all degree
    router.get("/", degree.findAll);
  
    // Retrieve all published degree
    router.get("/active", degree.findAllActive);
  
    // Retrieve a single Degree with id
    router.get("/:id", degree.findOne);
  
    // Update a Degree with id
    router.put("/:id", degree.update);
  
    // Delete a Degree with id
    router.delete("/:id", degree.delete);
  
    // Create a new Degree
    router.delete("/", degree.deleteAll);
  
    app.use('/degree', router);
  };*/