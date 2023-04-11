const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Designation = require('../controllers/designationController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Designation name is required'),
], validate, Designation.create);

router.get('/get/',  Designation.get);

module.exports = router;