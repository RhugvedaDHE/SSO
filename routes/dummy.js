const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Dummy = require('../controllers/dummyController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('City name is required'),
], validate, Dummy.create);

router.get('/get/',  Dummy.get);

module.exports = router;