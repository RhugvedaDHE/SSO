const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
//const validate = require('../middlewares/validate');
const staff = require('../controllers/staffController');
//var multer = require('multer');
const authenticate = require('../middlewares/authenticate');

console.log("In student routes");



// Update a Staff with id
router.post("/update-staff", authenticate, staff.updateInstituteStaff);

//get institute staff list
router.get("/institute-list/:id", authenticate, staff.getInstituteStaffList); 

// Retrieve a single staff with token
router.get("/details", authenticate, staff.getStaffDetails);

// Retrieve a single staff with id
router.get("/details/:id", authenticate, staff.getStaffDetails);

router.put("/verify", authenticate, staff.verifyStudent);



// Retrieve all published student
/*
router.get("/active", student.findAllActive);


//retire all user companies
//router.get("/user_companies", student.userCompanies);




// Delete a Student with id
router.delete("/:id", student.delete);

// Create a new Student
router.delete("/", student.deleteAll);*/
module.exports = router;