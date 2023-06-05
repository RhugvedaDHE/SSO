const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const doctype = require('../controllers/doctypeController');
//var multer = require('multer');


console.log("In doctype routes");

// Create a new doctype
router.post("/",[
    check('name').not().isEmpty().withMessage('Doc name is required'),
], validate, doctype.create);

// Retrieve all doctype
router.get("/all/:id", doctype.findAll);

//get all parent doc types
router.get("/all/parent/doctypes", doctype.getParentDocTypes);

// Retrieve all published doctype
router.get("/active", doctype.findAllActive);

// Retrieve a single doctype with id
router.post("/:id", doctype.findOne);

// Update a doctype with id
router.put("/:id", doctype.update);

// Delete a doctype with id
router.delete("/:id", doctype.delete);

// Create a new doctype
router.delete("/", doctype.deleteAll);
module.exports = router;
