const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Class = require('../controllers/classController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Class name is required'),
    check('institute_type_id').not().isEmpty().withMessage('Institute is required'),
], validate, Class.create);

router.get('/get/',  Class.get);

module.exports = router;