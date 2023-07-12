const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const AdditionalOtherSkills = require('../controllers/additionalSkillsController');
const authenticate = require('../middlewares/authenticate');
//var multer = require('multer');


console.log("In additional skill routes");

// Create a new Skill
router.post("/",[
    check('name').not().isEmpty().withMessage('Additional Skills name is required'),
], validate, AdditionalOtherSkills.create);

// Retrieve all AdditionalSkills
router.get("/all", AdditionalOtherSkills.findAll);

module.exports = router;
