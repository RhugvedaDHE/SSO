const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const company = require('../controllers/companyController');


console.log("In company routes");

// Create a new Company
router.post("/",[
    check('name').not().isEmpty().withMessage('Company name is required'),
], validate, company.create);

// Retrieve all company
router.get("/all", company.findAll);

// Retrieve all published company
router.get("/active", company.findAllActive);

//retire all user companies
//router.get("/user_companies", company.userCompanies);

// Retrieve a single Company with id
router.post("/details", company.findOne);

// Update a Company with id
router.put("/:id", company.update);

// Delete a Company with id
router.delete("/:id", company.delete);

// Create a new Company
router.delete("/", company.deleteAll);
module.exports = router;