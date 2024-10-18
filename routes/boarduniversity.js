const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Boarduniversity = require('../controllers/boardUniversityController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Board university name is required'),
    check('state_id').not().isEmpty().withMessage('State is required'),
], validate, Boarduniversity.create);

router.post('/get/',  Boarduniversity.get);

module.exports = router;