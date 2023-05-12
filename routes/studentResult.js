const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const studentResult = require('../controllers/studentresultController');
//var multer = require('multer');


console.log("In studentResult routes");

// Create a new StudentResult
router.post("/",[
    check('student_enrollment_id').not().isEmpty().withMessage('Student enrollment ID is required'),
], validate, studentResult.create);

// Retrieve all student's Guardian
router.get("/all/:id", studentResult.findAll);

// Retrieve all published studentResult
router.get("/active", studentResult.findAllActive);

// Retrieve a single StudentResult with id
router.post("/:id", studentResult.findOne);

// Update a StudentResult with id
router.put("/:id", studentResult.update);

// Delete a StudentResult with id
router.delete("/:id", studentResult.delete);

// Create a new StudentResult
router.delete("/", studentResult.deleteAll);
module.exports = router;
