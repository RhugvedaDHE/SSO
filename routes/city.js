const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const City = require('../controllers/cityController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('City name is required'),
    check('district_id').not().isEmpty().withMessage('District is required'),
], validate, City.create);

router.get('/get/',  City.get);

module.exports = router;