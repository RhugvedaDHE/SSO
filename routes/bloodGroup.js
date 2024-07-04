const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const bloodGroup = require('../controllers/bloodgroupController');
//var multer = require('multer');


console.log("In bloodGroup routes");

// Create a new BloodGroup
router.post("/",[
    check('name').not().isEmpty().withMessage('BloodGroup name is required')
    .matches(/^(A|B|AB|O)[+-]$/).withMessage('Invalid blood group format'),
], validate, bloodGroup.create);

// Retrieve all bloodGroup
router.get("/all", bloodGroup.findAll);

// Retrieve all published bloodGroup
router.get("/active", bloodGroup.findAllActive);

// Retrieve a single BloodGroup with id
router.post("/:id", bloodGroup.findOne);

// Update a BloodGroup with id
router.put("/:id",[
    check('name').not().isEmpty().withMessage('BloodGroup name is required')
    .matches(/^(A|B|AB|O)[+-]$/).withMessage('Invalid blood group format'),
], bloodGroup.update);

// Delete a BloodGroup with id
router.delete("/:id", bloodGroup.delete);

// Create a new BloodGroup
router.delete("/", bloodGroup.deleteAll);
module.exports = router;
