const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const InstProgSub = require('../controllers/instprogsubController');
const authenticate = require('../middlewares/authenticate');

router.post('/create', [
    check('institute_id').isNumeric().withMessage('Institute name is required'),
    check('programme_id').isNumeric().withMessage('Programme name is required'),
    check('subject_id').isNumeric().withMessage('Subject name is required'),
    // check('userdoc_id').isNumeric().withMessage('Userdoc is required'),
], validate, authenticate, InstProgSub.create);

router.post('/create-bulk', InstProgSub.createBulk);

router.post('/get/', InstProgSub.get);

router.post('/get/subjects', InstProgSub.getSubjects);

module.exports = router;