const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const ePramaan = require('../controllers/e-pramaanController');
const authenticate = require('../middlewares/authenticate');

//undertaking
router.get('/get-hmac', ePramaan.createUniquecode);
router.post('/JWT', ePramaan.createJWT);
// router.get('/get-jwt/:authCode/:stateId/:nonce/:codeVerifier/:clientid', ePramaan.createJWT);
router.get('/logout', ePramaan.logout);
module.exports = router;