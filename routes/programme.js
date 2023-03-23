const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Programme = require('../controllers/programmeController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Programme name is required'),
], validate, Programme.create);

router.get('/get/',  Programme.get);

router.post('/get/institute',  Programme.getInstituteProgramme);

module.exports = router;