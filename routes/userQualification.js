const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const userQualification = require('../controllers/userqualificationController');
//var multer = require('multer');


console.log("In userQualification routes");

// Create a new StudentMarks
router.post("/",[
    check('user_id').not().isEmpty().withMessage('User ID is required'),
], validate, userQualification.create);

// Retrieve all student's Guardian
router.get("/all/:id", userQualification.findAll);

// Retrieve all published userQualification
router.get("/active", userQualification.findAllActive);

// Retrieve a single StudentMarks with id
router.post("/:id", userQualification.findOne);

// Update a StudentMarks with id
router.put("/:id", userQualification.update);

// Delete a StudentMarks with id
router.delete("/:id", userQualification.delete);

// Create a new StudentMarks
router.delete("/", userQualification.deleteAll);
module.exports = router;
