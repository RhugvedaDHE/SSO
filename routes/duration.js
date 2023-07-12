const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Duration = require('../controllers/durationController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Duration name is required'),
], validate, Duration.create);


router.get('/get/',  Duration.get);
module.exports = router;