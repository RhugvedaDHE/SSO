const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const instituteProgrammeCourseSubject = require('../controllers/instituteprogrammecoursesubjectController');
//var multer = require('multer');


console.log("In instituteProgrammeCourseSubject routes");

// Create a new InstituteProgrammeCourseSubject
router.post("/",[
    check('institute_program_id').not().isEmpty().withMessage('Institute program ID is required'),check('program_subject_id').not().isEmpty().withMessage('Program subject ID is required')
], validate, instituteProgrammeCourseSubject.create);

// Retrieve all programme Semester
router.post("/all", instituteProgrammeCourseSubject.findAll);

// Retrieve all published instituteProgrammeCourseSubject
//router.get("/active", instituteProgrammeCourseSubject.findAllActive);

// Retrieve a single InstituteProgrammeCourseSubject with id
router.post("/:id", instituteProgrammeCourseSubject.findOne);

// Update a InstituteProgrammeCourseSubject with id
router.put("/:id", instituteProgrammeCourseSubject.update);

// Delete a InstituteProgrammeCourseSubject with id
router.delete("/:id", instituteProgrammeCourseSubject.delete);

// Create a new InstituteProgrammeCourseSubject
router.delete("/", instituteProgrammeCourseSubject.deleteAll);

//router.post('/programsemesters',  instituteProgrammeCourseSubject.getProgrammeSemesters);

module.exports = router;
