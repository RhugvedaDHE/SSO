const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const mode = require('../controllers/modeController');
//var multer = require('multer');


console.log("In mode routes");

// Create a new Mode
router.post("/",[
    check('name').not().isEmpty().withMessage('Mode name is required'),
], validate, mode.create);

// Retrieve all mode
router.get("/all", mode.findAll);

module.exports = router;
