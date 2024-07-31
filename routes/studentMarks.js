const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const studentMarks = require('../controllers/studentmarksController');
const authenticate = require('../middlewares/authenticate');
//var multer = require('multer');
const authorization = require('../middlewares/authorization');

console.log("In studentMarks routes");

// Create a new StudentMarks
// router.post("/",[
//     check('student_enrollment_id').not().isEmpty().withMessage('Student enrollment ID is required'),
// ], validate, studentMarks.create);

router.get("/all", authenticate, studentMarks.findAll);

// router.get("/active", studentMarks.findAllActive);

// router.post("/:id", studentMarks.findOne);


router.post("/create", [
    check("program_id")
      .not()
      .isEmpty()
      .withMessage("Your program is required")
      .isNumeric()
      .withMessage("Please select a valid Programme"),
    check("eval_type_id")
      .not()
      .isEmpty()
      .withMessage("Evaluation type is required")
      .isNumeric()
      .withMessage("Please select a valid Evaluation type"),
    check("board_university")
      .not()
      .isEmpty()
      .withMessage("Your Board/University is required"),
      
    check("institute_name")
      .not()
      .isEmpty()
      .withMessage("Your Institute is required"),
    //   .isAlpha()
    //   .withMessage("Institute must have only alphabets"),
    // check("subject")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your Subject is required"),
    //   .isAlpha()
    //   .withMessage("Subject must have only alphabets"),
    check("year_of_passing")
      .not()
      .isEmpty()
      .withMessage("Year of passing are required"),
    //   .isNumeric()
    //   .withMessage("Year of passing must contain only numeric digits"),
    // check("course")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your Course is required"),
    // check("programme_semester")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your Programme-semester is required"),
    
    check("total_marks")
      .not()
      .isEmpty()
      .withMessage("Total marks are required")
      .isNumeric()
      .withMessage("Total marks must contain only numeric digits"),
    check("marks_obtained")
      .not()
      .isEmpty()
      .withMessage("Marks obtained are required")
      .isNumeric()
      .withMessage("Marks obtained must contain only numeric digits"),
    check("grade_obtained")
      .not()
      .isEmpty()
      .withMessage("Grade obtained are required"),
    check("active")
      .not()
      .isEmpty()
      .withMessage("Active value is required")
      .isBoolean()
      .withMessage("Active value must contain only boolean value"),
    check("last_qual_year")
      .not()
      .isEmpty()
      .withMessage("Last qualifying year value is required")
      .isBoolean()
      .withMessage("Last qualifying year value must contain only boolean value"),
  ],
  // validate,
  authenticate, studentMarks.create);

  router.post("/update-marks", [
    check("program_id")
      .not()
      .isEmpty()
      .withMessage("Your program is required")
      .isNumeric()
      .withMessage("Please select a valid Programme"),
    check("eval_type_id")
      .not()
      .isEmpty()
      .withMessage("Evaluation type is required")
      .isNumeric()
      .withMessage("Please select a valid Evaluation type"),
    check("board_university")
      .not()
      .isEmpty()
      .withMessage("Your Board/University is required"),
      
    check("institute_name")
      .not()
      .isEmpty()
      .withMessage("Your Institute is required"),
    //   .isAlpha()
    //   .withMessage("Institute must have only alphabets"),
    // check("subject")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your Subject is required"),
    //   .isAlpha()
    //   .withMessage("Subject must have only alphabets"),
    check("year_of_passing")
      .not()
      .isEmpty()
      .withMessage("Year of passing are required"),
    //   .isNumeric()
    //   .withMessage("Year of passing must contain only numeric digits"),
    // check("course")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your Course is required"),
    // check("programme_semester")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your Programme-semester is required"),
    
    check("total_marks")
      .not()
      .isEmpty()
      .withMessage("Total marks are required")
      .isNumeric()
      .withMessage("Total marks must contain only numeric digits"),
    check("marks_obtained")
      .not()
      .isEmpty()
      .withMessage("Marks obtained are required")
      .isNumeric()
      .withMessage("Marks obtained must contain only numeric digits"),
    check("grade_obtained")
      .not()
      .isEmpty()
      .withMessage("Grade obtained are required"),
    check("active")
      .not()
      .isEmpty()
      .withMessage("Active value is required")
      .isBoolean()
      .withMessage("Active value must contain only boolean value"),
    check("last_qual_year")
      .not()
      .isEmpty()
      .withMessage("Last qualifying year value is required")
      .isBoolean()
      .withMessage("Last qualifying year value must contain only boolean value"),
  ],
  // validate,
  authenticate, studentMarks.updateMarks);

router.post("/calculate-percentage", authenticate, studentMarks.calculatePercentage);

router.post("/delete", studentMarks.delete);

router.post("/create-enrollment", authenticate, studentMarks.createEnrollment);
router.post("/create-marks", authenticate, studentMarks.createMarks);

// router.delete("/", studentMarks.deleteAll);
module.exports = router;
