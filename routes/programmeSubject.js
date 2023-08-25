const express = require("express");
const router = express.Router();
require("dotenv").config();
const { check } = require("express-validator");
const validate = require("../middlewares/validate");
const programmeSubject = require("../controllers/progsubController");

router.post(
  "/create",
  [
    check("programme_id").not().isEmpty().withMessage("Programme is required"),
    check("subject_id").not().isEmpty().withMessage("Subject is required"),
  ],
  validate,
  programmeSubject.create
);

router.get("/get/", programmeSubject.get);

//Get subjects based on programme ID
router.get("/programmesubjects/:id", programmeSubject.getProgramSubjects);

module.exports = router;
