const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const userDocs = require('../controllers/userdocsController');
//var multer = require('multer');


console.log("In userDocs routes");

// Create a new StudentMarks
router.post("/",[
    check('user_id').not().isEmpty().withMessage('User ID is requireddd'),
], validate, userDocs.create);

// Retrieve all student's Guardian
router.get("/all/:id", userDocs.findAll);

//router.get("/files", userDocs.getListFiles);

router.post("/showfile", userDocs.showImage);


// Retrieve all published userDocs
//router.get("/active", userDocs.findAllActive);

// Retrieve a single StudentMarks with id
router.post("/:id", userDocs.findOne);

// Update a StudentMarks with id
router.put("/:id", userDocs.update);

// Delete a StudentMarks with id
router.delete("/:id", userDocs.delete);

// Create a new StudentMarks
router.delete("/", userDocs.deleteAll);
module.exports = router;
