const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const religion = require('../controllers/religionController');
//var multer = require('multer');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Religion name is required'),
], validate, religion.create);

router.get('/get/',  religion.get);

module.exports = router;
