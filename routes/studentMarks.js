const express = require("express");
const router = express.Router();
require("dotenv").config();
const { check } = require("express-validator");
const validate = require("../middlewares/validate");
const studentMarks = require("../controllers/studentmarksController");
const authenticate = require("../middlewares/authenticate");
//var multer = require('multer');
const authorization = require("../middlewares/authorization");

console.log("In studentMarks routes");

// Create a new StudentMarks
// router.post("/",[
//     check('student_enrollment_id').not().isEmpty().withMessage('Student enrollment ID is required'),
// ], validate, studentMarks.create);

router.get("/all", authenticate, studentMarks.findAll);

// router.get("/active", studentMarks.findAllActive);

// router.post("/:id", studentMarks.findOne);

router.post(
  "/create",
  [
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
      .withMessage(
        "Last qualifying year value must contain only boolean value"
      ),
  ],
  // validate,
  authenticate,
  studentMarks.create
);

router.post(
  "/update-marks",
  [
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
      .withMessage(
        "Last qualifying year value must contain only boolean value"
      ),
  ],
  // validate,
  authenticate,
  studentMarks.updateMarks
);

router.post(
  "/calculate-percentage",
  authenticate,
  studentMarks.calculatePercentage
);

router.post("/delete", studentMarks.delete);

router.post(
  "/create-enrollment",
  [
    // check("qual_type_id")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your Qualification type is required")
    //   .isNumeric()
    //   .withMessage("Please select a valid qualification type"),
    check("programme_id")
      .not()
      .isEmpty()
      .withMessage("Your programme is required")
      .isNumeric()
      .withMessage("Please select a valid Programme"),
    // check("evaltype_id")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Evaluation type is required")
    //   .isNumeric()
    //   .withMessage("Please select a valid Evaluation type"),
    // check("stream_id")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your Stream is required")
    //   .isNumeric()
    //   .withMessage("Please select a valid Stream"),
    check("institute_id")
      .not()
      .isEmpty()
      .withMessage("Your Institute is required")
      .isNumeric()
      .withMessage("Please select a valid Institute"),
    check("subject_id")
      .not()
      .isEmpty()
      .withMessage("Your subject is required")
      .isNumeric()
      .withMessage("Please select a valid Subject"),
    // check("userdoc_id")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your User document is required")
    //   .isNumeric()
    //   .withMessage("Please select a valid User document"),

    // check("academic_year_id")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your Academic year is required")
    //   .isNumeric()
    //   .withMessage("Please select a valid Academic year"),
    check("current_semester_id")
      .not()
      .isEmpty()
      .withMessage("Your current Semester is required")
      .isNumeric()
      .withMessage("Please select a valid Current Semester"),
    check("current_class_id")
      .not()
      .isEmpty()
      .withMessage("Your current Class is required")
      .isNumeric()
      .withMessage("Please select a valid Current Class"),
    // check("consolidated_total_marks")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Consolidated total marks are required")
    //   .isNumeric()
    //   .withMessage("Consolidated total marks must contain only numeric digits"),
    // check("consolidated_marks_obtained")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Consolidated marks obtained are required")
    //   .isNumeric()
    //   .withMessage(
    //     "Consolidated marks obtained must contain only numeric digits"
    //   ),
  ],
  // validate,
  authenticate,
  studentMarks.createEnrollment
);

router.post(
  "/create-marks",
  [
    check("enrollment_id")
      .not()
      .isEmpty()
      .withMessage("Your Enrollment id is required")
      .isNumeric()
      .withMessage("Enter valid enrollment id"),
    check("semester_id")
      .not()
      .isEmpty()
      .withMessage("Your semester is required")
      .isNumeric()
      .withMessage("Please select a valid Programme"),
    check("eval_type_id")
      .not()
      .isEmpty()
      .withMessage("Evaluation type is required")
      .isNumeric()
      .withMessage("Please select a valid Evaluation type"),
    check("total_marks")
      .not()
      .isEmpty()
      .withMessage("Your total marks is required")
      .isNumeric()
      .withMessage("Please enter total marks"),
    check("marks_obtained")
      .not()
      .isEmpty()
      .withMessage("Your marks obtained is required")
      .isNumeric()
      .withMessage("Please enter marks obtained"),

    check("last_qual_year")
      .not()
      .isEmpty()
      .withMessage("Your last qualifying year")
      .isBoolean()
      .withMessage("Please select a valid last qualifying year"),

    check("userdoc_id")
      .not()
      .isEmpty()
      .withMessage("Your User document is required")
      .isNumeric()
      .withMessage("Please select a valid User document"),
  ],
  validate,
  authenticate,
  studentMarks.createMarks
);

router.post("/delete-marks", authenticate, studentMarks.deleteOnlyMarks);
module.exports = router;
