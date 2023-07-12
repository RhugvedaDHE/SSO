const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const StudAddSkills = require('../controllers/studentadditionalskillsController');
const authenticate = require('../middlewares/authenticate');
//var multer = require('multer');


console.log("In student additional skill routes");

// Create a new Skill
router.post("/",[
    check('title').not().isEmpty().withMessage('Title is required'),
    check('mode_id').not().isEmpty().withMessage('Mode is required'),
    check('location').not().isEmpty().withMessage('Location is required'),
], validate, authenticate, StudAddSkills.create);

// Retrieve all StudAddSkills
router.get("/all", authenticate, StudAddSkills.findAll);

module.exports = router;
