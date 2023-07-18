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
    check('user_docs_id').not().isEmpty().withMessage('USer Document is required'),
], validate, authenticate, StudAddSkills.create);

// Retrieve all StudAddSkills
router.get("/all", authenticate, StudAddSkills.findAll);

//By instAdmin
router.get("/all/:id", authenticate, StudAddSkills.findAllAddSkillsInstAdmin);

router.post("/update",[
    check('stud_add_skill_id').not().isEmpty().withMessage('Atleast one additional skill should be selected'),
    check('title').not().isEmpty().withMessage('Title is required'),
    check('mode_id').not().isEmpty().withMessage('Mode is required'),
    check('location').not().isEmpty().withMessage('Location is required'),
], validate, authenticate, StudAddSkills.update);

router.post("/delete",[
    check('stud_add_skill_id').not().isEmpty().withMessage('Atleast one additional skill should be selected'),
], validate, authenticate, StudAddSkills.delete);
module.exports = router;
