const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const casteCategory = require('../controllers/castecategoryController');
//var multer = require('multer');


console.log("In casteCategory routes");

// Create a new CasteCategory
router.post("/",[
    check('name').not().isEmpty().withMessage('CasteCategory name is required'),
], validate, casteCategory.create);

// Retrieve all casteCategory
router.get("/all", casteCategory.findAll);

// Retrieve all published casteCategory
router.get("/active", casteCategory.findAllActive);

// Retrieve a single CasteCategory with id
router.post("/:id", casteCategory.findOne);

// Update a CasteCategory with id
router.put("/:id", casteCategory.update);

// Delete a CasteCategory with id
router.delete("/:id", casteCategory.delete);

// Create a new CasteCategory
router.delete("/", casteCategory.deleteAll);
module.exports = router;
