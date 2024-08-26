const express = require("express");
const router = express.Router();
require("dotenv").config();
const { check } = require("express-validator");
const validate = require("../middlewares/validate");
const AcademicYear = require("../controllers/academicyearController");

router.post(
  "/create",
  [
    check("value").not().isEmpty().withMessage("Academic Year value is required"),
  ],
  validate,
  AcademicYear.create
);

router.get(
  "/get/",
  AcademicYear.get
);

module.exports = router;
