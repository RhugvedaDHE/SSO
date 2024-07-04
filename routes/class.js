const express = require("express");
const router = express.Router();
require("dotenv").config();
const { check } = require("express-validator");
const validate = require("../middlewares/validate");
const Class = require("../controllers/classController");

router.post(
  "/create",
  [
    check("name")
      .not()
      .isEmpty()
      .withMessage("Class name is required")
      .isAlpha()
      .withMessage("Class name should contain only alphabets"),    
    check("institute_type_id")
      .not()
      .isEmpty()
      .withMessage("Institute is required")
      .isNumeric()
      .withMessage("Please select valid Insitute"),
  ],
  validate,
  Class.create
);

router.get("/get/:institute_type_id", Class.get);

module.exports = router;
