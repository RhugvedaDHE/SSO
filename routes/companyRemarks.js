const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const companyRemarks = require('../controllers/companyremarksController');
const authenticate = require('../middlewares/authenticate');

console.log("In staffRemarks routes");

// Create a new staffRemarks
router.post("/",[
    check('entity_user_id').not().isEmpty().withMessage('Staff entity user id id is required'),
], validate, authenticate, companyRemarks.create);

// Retrieve all staff remarks
router.post("/all", [
    check('entity_user_id').not().isEmpty().withMessage('Staff entity user id id is required'),
], validate, authenticate, companyRemarks.findAll);

// Retrieve all companyRemarks by staff user token
router.get("/get", authenticate, companyRemarks.findByToken);

// Delete a companyRemarks 
router.post("/delete", authenticate, companyRemarks.delete);

module.exports = router;
