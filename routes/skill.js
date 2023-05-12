const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const skill = require('../controllers/skillController');
//var multer = require('multer');


console.log("In skill routes");

// Create a new Skill
router.post("/",[
    check('name').not().isEmpty().withMessage('Skill name is required'),
], validate, skill.create);

// Retrieve all skill
router.get("/all", skill.findAll);

// Retrieve all published skill
router.get("/active", skill.findAllActive);

// Retrieve a single Skill with id
router.post("/:id", skill.findOne);

// Update a Skill with id
router.put("/:id", skill.update);

// Delete a Skill with id
router.delete("/:id", skill.delete);

// Create a new Skill
router.delete("/", skill.deleteAll);
module.exports = router;
