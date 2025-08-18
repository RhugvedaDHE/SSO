const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const EmploymentType = require('../controllers/emptypeController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('EmploymentType name is required'),
], validate, EmploymentType.create);

router.get('/get/',  EmploymentType.get);

module.exports = router;