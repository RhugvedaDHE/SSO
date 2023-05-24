const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const authenticate = require('../middlewares/authenticate');
const Role = require('../controllers/roleController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Role name is required'),
], validate, Role.create);

router.post('/get/',  Role.get);
router.get('/all/get',  Role.getAll);
router.get('/get/user-role', authenticate, Role.getUserRole);
router.get('/get/admin-role', Role.getAllAdmins);

router.get('/getInstituteAdmin/',  Role.getInstituteAdmin);
router.get('/getUniversityAdmin/',  Role.getUniversityAdmin);
router.get('/getDepartmentAdmin/',  Role.getDepartmentAdmin);

module.exports = router;