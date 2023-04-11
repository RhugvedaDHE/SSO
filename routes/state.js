const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const State = require('../controllers/stateController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('State name is required'),
    check('country_id').not().isEmpty().withMessage('Country is required'),
], validate, State.create);

router.post('/get/',  State.get);

module.exports = router;