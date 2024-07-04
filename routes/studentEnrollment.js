const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const authenticate = require('../middlewares/authenticate');
const studentEnrollment = require('../controllers/studentEnrollmentController');
//var multer = require('multer');


console.log("In studentEnrollment routes");


// Retrieve all student's Guardian
router.get("/", authenticate, studentEnrollment.findOne);
router.post("/", [
    check("institute_id")
      .not()
      .isEmpty()
      .withMessage("Your Institute is required")
      .isNumeric()
      .withMessage("Please enter a valid Institute"),
      check("programme_id")
      .not()
      .isEmpty()
      .withMessage("Your Programme is required")
      .isNumeric()
      .withMessage("Please enter a valid Programme"),
      check("class_id")
      .not()
      .isEmpty()
      .withMessage("Your Class is required")
      .isNumeric()
      .withMessage("Please enter a valid Class"),
      check("subject_id")
      .not()
      .isEmpty()
      .withMessage("Your Subject is required")
      .isNumeric()
      .withMessage("Please enter a valid Subject"),
], validate, authenticate, studentEnrollment.update);

module.exports = router;
