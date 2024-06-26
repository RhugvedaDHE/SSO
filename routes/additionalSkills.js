const express = require("express");
const router = express.Router();
require("dotenv").config();
const { check } = require("express-validator");
const validate = require("../middlewares/validate");
const AdditionalOtherSkills = require("../controllers/additionalSkillsController");
const authenticate = require("../middlewares/authenticate");
//var multer = require('multer');

console.log("In additional skill routes");

// Create a new Skill
router.post(
  "/",
  [
    check("name")
      .not()
      .isEmpty()
      .withMessage("Additional Skills name is required")
      .isAlpha()
      .withMessage(
        "Additional Skills name must contain only alphabetic characters"
      ),
    check("doc_type_id")
      .not()
      .isEmpty()
      .withMessage("Document type id is required")
      .isNumeric()
      .withMessage("Document type id should be numeric"),
  ],
  validate,
  AdditionalOtherSkills.create
);

// Retrieve all AdditionalSkills
router.get("/all", AdditionalOtherSkills.findAll);

router.post(
  "/delete",
  [
    check("stud_add_skill_id")
      .not()
      .isEmpty()
      .withMessage("Additional Skills id is required")
      .isNumeric()
      .withMessage("Additional Skills id must be numeric"),
  ],
  validate,
  AdditionalOtherSkills.delete
);

module.exports = router;
