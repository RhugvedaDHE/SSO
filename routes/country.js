const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Country = require('../controllers/countryController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Country name is required'),
], validate, Country.create);

router.get('/get/',  Country.get);

module.exports = router;