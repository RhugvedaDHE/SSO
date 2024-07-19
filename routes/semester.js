const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Semester = require('../controllers/semesterController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Semester name is required'),
], validate, Semester.create);

router.get('/get',  Semester.get);

module.exports = router;