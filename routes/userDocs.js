const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const userDocs = require('../controllers/userdocsController');
const authenticate = require('../middlewares/authenticate');
//var multer = require('multer');


console.log("In userDocs routes");



// router.post("/uploaddoc", userDocs.uploadDoc);

// Retrieve all user docs
// router.get("/all/:id", userDocs.findAll);

// router.post("/showfile", userDocs.showImage);

// Retrieve a single  with id
// router.post("/get/:id", userDocs.findOne);

// Delete a  with id
router.post("/delete/docs", authenticate, userDocs.delete);

// Create a new 
// router.delete("/", userDocs.deleteAll);
module.exports = router;
