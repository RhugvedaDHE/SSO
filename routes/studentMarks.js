const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const studentMarks = require('../controllers/studentmarksController');
//var multer = require('multer');


console.log("In studentMarks routes");

// Create a new StudentMarks
router.post("/",[
    check('student_enrollment_id').not().isEmpty().withMessage('Student enrollment ID is required'),
], validate, studentMarks.create);

// Retrieve all student's Guardian
router.get("/all/:id", studentMarks.findAll);

// Retrieve all published studentMarks
router.get("/active", studentMarks.findAllActive);

// Retrieve a single StudentMarks with id
router.post("/:id", studentMarks.findOne);

// Update a StudentMarks with id
router.put("/:id", studentMarks.update);

// Delete a StudentMarks with id
router.delete("/:id", studentMarks.delete);

// Create a new StudentMarks
router.delete("/", studentMarks.deleteAll);
module.exports = router;
