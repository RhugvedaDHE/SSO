const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Taluka = require('../controllers/talukaController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Taluka name is required'),
    check('district_id').not().isEmpty().withMessage('District is required'),
], validate, Taluka.create);

router.post('/get/', Taluka.get);

module.exports = router;