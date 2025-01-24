const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Otp = require('../controllers/otpController');
const authenticate = require('../middlewares/authenticate');


router.post('/generate', [
    check('to').not().isEmpty().withMessage('To is required'),
    check('type').not().isEmpty().withMessage('Type is required'),
], validate, Otp.generate);

router.get('/generate-update-password', authenticate, Otp.generateUpdatePassword);

router.post('/verify', [
    check('details').not().isEmpty().withMessage('Phone/Email is required'),
    check('otp').not().isEmpty().withMessage('OTP is required'),
    check('type').not().isEmpty().withMessage('Type is required'),
], validate, Otp.verify);

router.post('/verify-update-password', [
    check('otp').not().isEmpty().withMessage('OTP is required'),
], validate, authenticate, Otp.verifyUpdatepassword);

router.post('/reset-attempts', [
    check('details').not().isEmpty().withMessage('Phone/Email is required'),
], validate, Otp.resetUpdatePassword_attempts);

router.post('/test-sms', Otp.testSMS);


module.exports = router;