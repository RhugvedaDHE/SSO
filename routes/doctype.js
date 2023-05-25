const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const doctype = require('../controllers/doctypeController');
//var multer = require('multer');


console.log("In doctype routes");

// Create a new Gender
router.post("/",[
    check('name').not().isEmpty().withMessage('Doc name is required'),
], validate, doctype.create);

// Retrieve all doctype
router.get("/all/:id", doctype.findAll);

// Retrieve all published doctype
router.get("/active", doctype.findAllActive);

// Retrieve a single Gender with id
router.post("/:id", doctype.findOne);

// Update a Gender with id
router.put("/:id", doctype.update);

// Delete a Gender with id
router.delete("/:id", doctype.delete);

// Create a new Gender
router.delete("/", doctype.deleteAll);
module.exports = router;
