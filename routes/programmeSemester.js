const express = require("express");
const router = express.Router();
require("dotenv").config();
const { check } = require("express-validator");
const validate = require("../middlewares/validate");
const programmeSemester = require("../controllers/programmesemesterController");
//var multer = require('multer');

console.log("In programmeSemester routes");

// Create a new ProgrammeSemester
router.post(
  "/",
  [
    check("program_id").not().isEmpty().withMessage("Programme ID is required"),
    check("semester_id").not().isEmpty().withMessage("Semester ID is required"),
  ],
  validate,
  programmeSemester.create
);

// Retrieve all programme Semester
router.post("/all", programmeSemester.findAll);

// Retrieve all published programmeSemester
//router.get("/active", programmeSemester.findAllActive);

// Retrieve a single ProgrammeSemester with id
router.post("/:id", programmeSemester.findOne);

// Update a ProgrammeSemester with id
router.put("/:id", programmeSemester.update);

// Delete a ProgrammeSemester with id
router.delete("/:id", programmeSemester.delete);

// Create a new ProgrammeSemester
router.delete("/", programmeSemester.deleteAll);

//Get semesters based on programme ID
router.get("/programmesemesters/:id", programmeSemester.getProgrammeSemesters);

module.exports = router;
