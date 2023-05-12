const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const stream = require('../controllers/streamController');
//var multer = require('multer');


console.log("In stream routes");

// Create a new Stream
router.post("/",[
    check('name').not().isEmpty().withMessage('Stream name is required'),
], validate, stream.create);

// Retrieve all stream
router.get("/all", stream.findAll);

// Retrieve all published stream
router.get("/active", stream.findAllActive);

// Retrieve a single Stream with id
router.post("/:id", stream.findOne);

// Update a Stream with id
router.put("/:id", stream.update);

// Delete a Stream with id
router.delete("/:id", stream.delete);

// Create a new Stream
router.delete("/", stream.deleteAll);
module.exports = router;
