const express = require("express");
const router = express.Router();
require("dotenv").config();
const { check } = require("express-validator");
const validate = require("../middlewares/validate");
const UserBank = require("../controllers/bankController");
const authenticate = require("../middlewares/authenticate");

router.post(
  "/create",
  [
    check("name")
      .not()
      .isEmpty()
      .withMessage("Bank name is required"),
      // .isAlpha()
      // .withMessage("Bank name should contain only alphabets"),
    check("account_number")
      .not()
      .isEmpty()
      .withMessage("Account Number is required")
      .isNumeric()
      .withMessage("Account Number should be a number"),
    check("ifsc_code")
      .not()
      .isEmpty()
      .withMessage("IFSC code is required")
      .isAlphanumeric()
      .withMessage("IFSC code should contain alphabets and numbers")
      .matches(/^[A-Za-z]{4}0[A-Za-z0-9]{6}$/)
      .withMessage("Invalid IFSC code format"),
    check("branch")
      .not()
      .isEmpty()
      .withMessage("Branch name is required"),
      // .isAlpha()
      // .withMessage("Branch name should contain only alphabets"),
    check("bank_address")
      .not()
      .isEmpty()
      .withMessage("Bank Address is required")
  ],
  validate,
  authenticate,
  UserBank.create
);

router.get("/get", authenticate, UserBank.get);

router.post(
  "/update",
  [
    check("name")
      .not()
      .isEmpty()
      .withMessage("Bank name is required"),
    check("account_number")
      .not()
      .isEmpty()
      .withMessage("Account Number is required")
      .isNumeric()
      .withMessage("Account Number Should be a number"),
    check("ifsc_code")
      .not()
      .isEmpty()
      .withMessage("IFSC code is required")
      .isAlphanumeric()
      .withMessage("IFSC code should contain alphabets and numbers")
      .matches(/^[A-Za-z]{4}0[A-Za-z0-9]{6}$/)
      .withMessage("Invalid IFSC code format"),
    check("branch")
      .not()
      .isEmpty()
      .withMessage("Branch name is required"),
    check("bank_address")
      .not()
      .isEmpty()
      .withMessage("Bank Address is required")
  ],
  validate,
  authenticate,
  UserBank.update
);

router.post("/validateIFSC", authenticate, UserBank.validateIFSC);
module.exports = router;
