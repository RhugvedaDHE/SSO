const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const OtherSkills = require('../controllers/otherskillsController');
const authenticate = require('../middlewares/authenticate');
//var multer = require('multer');


console.log("In other skill routes");

// Create a new Skill
router.post("/",[
    check('skills').not().isEmpty().withMessage('Other Skills name is required'),
], validate, authenticate, OtherSkills.create);

router.post("/add", authenticate, OtherSkills.addStudentSkills);

// Retrieve all OtherSkills
router.get("/all", OtherSkills.findAll);

// Retrieve all Student Other Skills
router.get("/student/all", authenticate, OtherSkills.getStudentOtherSkills);

// Retrieve all published OtherSkills
router.get("/active", OtherSkills.findAllActive);

// Retrieve a single Skill with id
router.post("/:id", OtherSkills.findOne);

// Update a Skill with id
router.put("/:id", OtherSkills.update);

// Delete a Skill with id
router.delete("/:id", OtherSkills.delete);

// Create a new Skill
router.delete("/", OtherSkills.deleteAll);
module.exports = router;
