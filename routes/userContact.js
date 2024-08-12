const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const userContact = require('../controllers/usercontactController');
const authenticate = require('../middlewares/authenticate');

router.post('/create', authenticate, userContact.create);



module.exports = router;