const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Subject = require('../controllers/subjectController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Subject name is required'),
], validate, Subject.create);

router.get('/get/', Subject.get);

module.exports = router;