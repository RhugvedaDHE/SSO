const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const percentage = require('../controllers/percentageController');
//var multer = require('multer');


console.log("In percentage routes");

// Create a new Percentage
router.post("/",[
    check('case').not().isEmpty().withMessage('Case is required'),
], validate, percentage.create);

// Retrieve all percentage
router.get("/all", percentage.findAll);

// Retrieve all published percentage
router.get("/active", percentage.findAllActive);

// Retrieve a single Percentage with id
router.get("/:id", percentage.findOne);

// Update a Percentage with id
router.put("/:id", percentage.update);

// Delete a Percentage with id
router.delete("/:id", percentage.delete);

// Create a new Percentage
router.delete("/", percentage.deleteAll);
module.exports = router;