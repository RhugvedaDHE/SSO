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

// Retrieve all company
router.get("/all", company.findAll);

// Retrieve all published company
router.get("/active", company.findAllActive);

//upload
router.post("/uploadlogo", company.uploadLogo);
router.post("/uploadcertificate", company.uploadCertificate);
/*router.post("/upload", function(request, response, next){

	var storage = multer.diskStorage({

		destination:function(request, file, callback)
		{
			callback(null, './uploads/company/logo');
		},
		filename : function(request, file, callback)
		{
			var temp_file_arr = file.originalname.split(".");

			var temp_file_name = temp_file_arr[0];

			var temp_file_extension = temp_file_arr[1];

			callback(null, temp_file_name + '-' + Date.now() + '.' + temp_file_extension);
		}

	});

	var upload = multer({storage:storage}).single('companyLogo');

	upload(request, response, function(error){

		if(error)
		{
			return response.end('Error Uploading File');
		}
		else
		{
			company.upload;
            //request.flash('success', request.file.filename);

			//response.redirect("/fileupload");

			return response.send('File is uploaded successfully '+request.file.filename);
		}

	});

});*/

//retire all user companies
//router.get("/user_companies", company.userCompanies);

// Retrieve a single Company with id
router.post("/details", authenticate, company.findOne);

// Update a Company with id
router.post("/update", authenticate, company.update);

// Delete a Company with id
router.delete("/:id", company.delete);

// Create a new Company
router.delete("/", company.deleteAll);
module.exports = router;