const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const authenticate = require('../middlewares/authenticate');
const EntityUser = require('../controllers/entityuserController');




router.get('/InstituteAdmins/',  EntityUser.getInstituteAdmins);
router.get('/GetDepartmentname/',authenticate,  EntityUser.getDepartmentname);
router.get('/GetAdmindetails/', EntityUser.getAdmindetails);

module.exports = router;