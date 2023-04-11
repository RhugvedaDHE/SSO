const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const authenticate = require('../middlewares/authenticate');
const Role = require('../controllers/roleController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Role name is required'),
], validate, Role.create);

router.get('/get/',  Role.get);
router.get('/get/user-role', authenticate, Role.getUserRole);

module.exports = router;