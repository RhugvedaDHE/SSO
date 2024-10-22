const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const instprogProgramme = require('../controllers/instprogController');


router.post('/create', [
    check('institute_id').not().isEmpty().withMessage('Institute name is required'),
    check('programme_id').not().isEmpty().withMessage('Programme is required'),
], validate, instprogProgramme.create);

router.post('/create-bulk', instprogProgramme.createBulk);

router.get('/get/',  instprogProgramme.get);

module.exports = router;