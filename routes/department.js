const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Department = require('../controllers/departmentController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Department name is required'),
], validate, Department.create);

router.get('/get/',  Department.get);

module.exports = router;