const express = require("express");
const router = express.Router();
require("dotenv").config();
const { check } = require("express-validator");
const validate = require("../middlewares/validate");
const userDocs = require("../controllers/userdocsController");
// const userDocs = require("../controllers/userdocsController_new");
const authenticate = require("../middlewares/authenticate");
//var multer = require('multer');

console.log("In static routes");


//check file ownership
router.get("/user/:filename", authenticate, userDocs.getFile);
router.get("/notoken/user/:filename", userDocs.getFileNoToken);
// router.get("/user/:filename", userDocs.getFile);
module.exports = router;
