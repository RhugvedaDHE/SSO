const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const qualificationTypes = require('../controllers/qualificationtypesController');
//var multer = require('multer');


console.log("In qualificationTypes routes");

// Create a new QualificationTypes
router.post("/",[
    check('name').not().isEmpty().withMessage('QualificationTypes name is required'),
], validate, qualificationTypes.create);

// Retrieve all qualificationTypes
router.get("/all", qualificationTypes.findAll);

// Retrieve all published qualificationTypes
router.get("/active", qualificationTypes.findAllActive);

// Retrieve a single QualificationTypes with id
router.post("/:id", qualificationTypes.findOne);

// Update a QualificationTypes with id
router.put("/:id", qualificationTypes.update);

// Delete a QualificationTypes with id
router.delete("/:id", qualificationTypes.delete);

// Create a new QualificationTypes
router.delete("/", qualificationTypes.deleteAll);
module.exports = router;
