const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Institute = require('../controllers/instituteController');


router.post('/create', [
    check('institute_type_id').not().isEmpty().withMessage('Institute name is required'),
    check('code').not().isEmpty().withMessage('Institute code is required'),
    check('name').not().isEmpty().withMessage('Institute name is required'),
    check('type').not().isEmpty().withMessage('Institute type is required'),
    check('address').not().isEmpty().withMessage('Institute address is required'),
    check('city_id').not().isEmpty().withMessage('City is required'),
    check('state_id').not().isEmpty().withMessage('State is required'),
    check('district_id').not().isEmpty().withMessage('District is required'),
    check('village').not().isEmpty().withMessage('Village is required'),
    check('country_id').not().isEmpty().withMessage('Country is required'),
    check('pincode').not().isEmpty().withMessage('Pincode is required'),
    check('hoi_id').not().isEmpty().withMessage('Head of the institute is required'),
    check('contact_person_name').not().isEmpty().withMessage('Contact person phone is required'),
    check('contact_person_email').not().isEmpty().withMessage('Contact person email is required'),
], validate, Institute.create);

router.get('/get/',  Institute.get);

router.post('/get/type',  Institute.gettype);

module.exports = router;