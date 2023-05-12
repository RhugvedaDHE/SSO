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
    check('type').not().isEmpty().withMessage('Mode type is required'),
], validate, mode.create);

// Retrieve all mode
router.get("/all", mode.findAll);

// Retrieve all published mode
router.get("/active", mode.findAllActive);

// Retrieve a single Mode with id
router.get("/:id", mode.findOne);

// Update a Mode with id
router.put("/:id", mode.update);

// Delete a Mode with id
router.delete("/:id", mode.delete);

// Create a new Mode
router.delete("/", mode.deleteAll);
module.exports = router;
