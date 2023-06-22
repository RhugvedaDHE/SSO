const express = require("express");
const router = express.Router();
require("dotenv").config();
const { check } = require("express-validator");
const validate = require("../middlewares/validate");
const Config = require("../controllers/configController");

router.post(
  "/create",
  [
    check("name").not().isEmpty().withMessage("Config name is required"),
    check("value").not().isEmpty().withMessage("Config value is required"),
  ],
  validate,
  Config.create
);

router.post(
  "/get/",
  [check("name").not().isEmpty().withMessage("Config name is required")],
  validate,
  Config.get
);

module.exports = router;
