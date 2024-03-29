const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
//const validate = require('../middlewares/validate');
const student = require('../controllers/studentController');
//var multer = require('multer');
const authenticate = require('../middlewares/authenticate');

console.log("In student routes");


// Retrieve all submitted student
router.get("/all/:id", student.getInstituteStudentList);

// Retrieve all INC, RESUB, REJ student
router.get("/all-status/:id", student.getInstituteStudentOtherStatus);

//list of all the students
router.get("/list/all/:offset", student.getStudentList);

router.get("/all/verified/:id", student.getVerifiedInstituteStudentList);

// Retrieve a single Student with id
router.get("/:id", student.getStudentDetails);
router.put("/verify", authenticate, student.verifyStudent);

// Retrieve all published student
/*
router.get("/active", student.findAllActive);


//retire all user companies
//router.get("/user_companies", student.userCompanies);



// Update a Student with id
router.put("/:id", student.update);

// Delete a Student with id
router.delete("/:id", student.delete);

// Create a new Student
router.delete("/", student.deleteAll);*/
module.exports = router;