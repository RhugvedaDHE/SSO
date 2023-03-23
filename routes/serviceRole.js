const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const ServiceRole = require('../controllers/serviceRoleController');


router.post('/create', [
    check('service_id').not().isEmpty().withMessage('Service name is required'),
    check('role_id').not().isEmpty().withMessage('Role is required'),
], validate, ServiceRole.create);

router.get('/get/', ServiceRole.get);

module.exports = router;