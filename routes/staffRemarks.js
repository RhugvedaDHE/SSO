const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const staffRemarks = require('../controllers/staffremarksController');
const authenticate = require('../middlewares/authenticate');

console.log("In staffRemarks routes");

// Create a new staffRemarks
router.post("/",[
    check('entity_user_id').not().isEmpty().withMessage('Staff entity user id id is required'),
], validate, authenticate, staffRemarks.create);

// Retrieve all staff remarks
router.post("/all", [
    check('entity_user_id').not().isEmpty().withMessage('Staff entity user id id is required'),
], validate, authenticate, staffRemarks.findAll);

// Retrieve all staffRemarks by staff user token
router.get("/get", authenticate, staffRemarks.findByToken);

// Delete a staffRemarks 
router.post("/delete", authenticate, staffRemarks.delete);

// // Retrieve all published staffRemarks
// router.get("/active", staffRemarks.findAllActive);

// // Retrieve a single staffRemarks with id
// router.post("/:id", staffRemarks.findOne);

// // Update a staffRemarks with id
// router.put("/:id", staffRemarks.update);



// Create a new staffRemarks
// router.delete("/", staffRemarks.deleteAll);
module.exports = router;
