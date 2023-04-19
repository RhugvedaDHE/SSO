const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const gender = require('../controllers/genderController');
//var multer = require('multer');


console.log("In gender routes");

// Create a new Gender
router.post("/",[
    check('name').not().isEmpty().withMessage('Gender name is required'),
], validate, gender.create);

// Retrieve all gender
router.get("/all", gender.findAll);

// Retrieve all published gender
router.get("/active", gender.findAllActive);

// Retrieve a single Gender with id
router.post("/:id", gender.findOne);

// Update a Gender with id
router.put("/:id", gender.update);

// Delete a Gender with id
router.delete("/:id", gender.delete);

// Create a new Gender
router.delete("/", gender.deleteAll);
module.exports = router;
