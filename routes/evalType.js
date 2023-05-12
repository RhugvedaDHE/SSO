const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const EvalTypes = require('../controllers/evalTypesController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Eval Type name is required'),
], validate, EvalTypes.create);

router.post('/get/',  EvalTypes.get);

module.exports = router;