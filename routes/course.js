const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Course = require('../controllers/courseController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Course name is required'),
    check('credit').not().isEmpty().withMessage('credit is required'),
    check('course_code').not().isEmpty().withMessage('Course code is required'),
], validate, Course.create);

router.get('/get/',  Course.get);

module.exports = router;