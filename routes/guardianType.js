const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const guardianType = require('../controllers/guardiantypeController');
//var multer = require('multer');


console.log("In guardianType routes");

// Create a new GuardianType
router.post("/",[
    check('name').not().isEmpty().withMessage('GuardianType name is required'),
], validate, guardianType.create);

// Retrieve all guardianType
router.get("/all", guardianType.findAll);

// Retrieve all published guardianType
router.get("/active", guardianType.findAllActive);

// Retrieve a single GuardianType with id
router.post("/:id", guardianType.findOne);

// Update a GuardianType with id
router.put("/:id", guardianType.update);

// Delete a GuardianType with id
router.delete("/:id", guardianType.delete);

// Create a new GuardianType
router.delete("/", guardianType.deleteAll);
module.exports = router;
