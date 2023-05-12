const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const studentRemarks = require('../controllers/studentremarksController');
//var multer = require('multer');


console.log("In studentRemarks routes");

// Create a new StudentRemarks
router.post("/",[
    check('student_enrollment_id').not().isEmpty().withMessage('Student enrollment ID is required'),
], validate, studentRemarks.create);

// Retrieve all student's Guardian
router.get("/all/:id", studentRemarks.findAll);

// Retrieve all published studentRemarks
router.get("/active", studentRemarks.findAllActive);

// Retrieve a single StudentRemarks with id
router.post("/:id", studentRemarks.findOne);

// Update a StudentRemarks with id
router.put("/:id", studentRemarks.update);

// Delete a StudentRemarks with id
router.delete("/:id", studentRemarks.delete);

// Create a new StudentRemarks
router.delete("/", studentRemarks.deleteAll);
module.exports = router;
