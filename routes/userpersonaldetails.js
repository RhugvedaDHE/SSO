const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const UserPersonalDetails = require('../controllers/userpersonaldetailsController');


router.get('/get/departmentadmin', UserPersonalDetails.getDepartmentAdminList);



module.exports = router;