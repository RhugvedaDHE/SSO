const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const InstituteType = require('../controllers/insttypeController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('InstituteType name is required'),
], validate, InstituteType.create);

router.get('/get/',  InstituteType.get);

module.exports = router;