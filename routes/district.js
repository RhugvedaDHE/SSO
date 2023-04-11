const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const District = require('../controllers/districtController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('District name is required'),
    check('state_id').not().isEmpty().withMessage('State is required'),
], validate, District.create);

router.post('/get/',  District.get);

module.exports = router;