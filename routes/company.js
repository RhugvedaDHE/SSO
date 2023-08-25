const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const company = require('../controllers/companyController');
const authenticate = require('../middlewares/authenticate');
//var multer = require('multer');


console.log("In company routes");

// Create a new Company
router.post("/",[
    check('name').not().isEmpty().withMessage('Company name is required'),
], validate, company.create);

router.post(
    "/dhe",
    [check("name").not().isEmpty().withMessage("Company name is required")],
    validate,
    company.createCompanyDHE
  );

// Retrieve all company
router.get("/all", company.findAll);

// Retrieve all published company
router.get("/list/:type", authenticate, company.listCompanies);

//upload
router.post("/uploadlogo", company.uploadLogo);
router.post("/uploadcertificate", company.uploadCertificate);

// Retrieve a single Company with token
router.get("/details", authenticate, company.findOne);
// Retrieve a single Company with id
router.get("/details/:user_id", authenticate, company.getCompanyDetailsById);

//retrive all user companies
router.get("/user_companies/:id", company.userCompanies);

// Retrieve a single Company with id
router.get("/companydetails/:id", company.getCompanyDetails);

// Update a Company with id
router.post("/update", authenticate, company.update);

// Delete a Company with id
router.delete("/:id", company.delete);

// Create a new Company
router.delete("/", company.deleteAll);
module.exports = router;