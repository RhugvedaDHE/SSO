const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Service = require('../controllers/serviceController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Service name is required'),
    check('url').not().isEmpty().withMessage('URL is required'),
], validate, Service.create);

router.get('/get/',  Service.get);

module.exports = router;