const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Bank = require('../controllers/bankController');
const authenticate = require('../middlewares/authenticate');

router.post('/create', [
    check('name').not().isEmpty().withMessage('Bank name is required'),
    check('account_number').not().isEmpty().withMessage('Account Number is required'),
    check('ifsc_code').not().isEmpty().withMessage('IFSC code is required'),
    check('branch').not().isEmpty().withMessage('Branch name is required'),
], validate, authenticate, Bank.create);

router.get('/get', authenticate, Bank.get);

router.post('/update', [
    check('name').not().isEmpty().withMessage('Bank name is required'),
    check('account_number').not().isEmpty().withMessage('Account Number is required'),
    check('ifsc_code').not().isEmpty().withMessage('IFSC code is required'),
    check('branch').not().isEmpty().withMessage('Branch name is required'),
], validate, authenticate, Bank.update);
module.exports = router;