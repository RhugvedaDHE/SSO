const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const experience = require('../controllers/experienceController');
//var multer = require('multer');


console.log("In experience routes");

// Create a new Experience
router.post("/",[
    check('case').not().isEmpty().withMessage('Experience case is required'),
], validate, experience.create);

// Retrieve all experience
router.get("/all", experience.findAll);

// Retrieve all published experience
router.get("/active", experience.findAllActive);

// Retrieve a single Experience with id
router.get("/:id", experience.findOne);

// Update a Experience with id
router.put("/:id", experience.update);

// Delete a Experience with id
router.delete("/:id", experience.delete);

// Create a new Experience
router.delete("/", experience.deleteAll);
module.exports = router;
