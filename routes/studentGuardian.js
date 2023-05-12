const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const studentGuardian = require('../controllers/studentguardianController');
//var multer = require('multer');


console.log("In studentGuardian routes");

// Create a new StudentGuardian
router.post("/",[
    check('student_enrollment_id').not().isEmpty().withMessage('Student enrollment ID is required'),
], validate, studentGuardian.create);

// Retrieve all student's Guardian
router.get("/all/:id", studentGuardian.findAll);

// Retrieve all published studentGuardian
router.get("/active", studentGuardian.findAllActive);

// Retrieve a single StudentGuardian with id
router.post("/:id", studentGuardian.findOne);

// Update a StudentGuardian with id
router.put("/:id", studentGuardian.update);

// Delete a StudentGuardian with id
router.delete("/:id", studentGuardian.delete);

// Create a new StudentGuardian
router.delete("/", studentGuardian.deleteAll);
module.exports = router;
