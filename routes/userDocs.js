const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const userDocs = require('../controllers/userdocsController');
//var multer = require('multer');


console.log("In userDocs routes");



router.post("/uploaddoc", userDocs.uploadDoc);

// Retrieve all user docs
router.get("/all/:id", userDocs.findAll);

//router.get("/files", userDocs.getListFiles);

router.post("/showfile", userDocs.showImage);


// Retrieve all published userDocs
//router.get("/active", userDocs.findAllActive);

// Retrieve a single  with id
router.post("/:id", userDocs.findOne);

// Update a  with id
//router.put("/:id", userDocs.update);

// Delete a  with id
router.delete("/:id", userDocs.delete);

// Create a new 
router.delete("/", userDocs.deleteAll);
module.exports = router;
