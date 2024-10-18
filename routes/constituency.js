const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Constituency = require('../controllers/constituencyController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Constituency name is required'),
    check('district_id').not().isEmpty().withMessage('District is required'),
    check('state_id').not().isEmpty().withMessage('State is required'),
], validate, Constituency.create);

router.post('/get/', Constituency.get);

module.exports = router;