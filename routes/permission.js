const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const authorization = require('../middlewares/authorization');
const authenticate = require('../middlewares/authenticate');
const Permission = require('../controllers/permissionController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Permission name is required'),
], validate, Permission.create);

router.get('/get/', Permission.get); //authorization.authorizationFunc("Get Permission")
// router.get('/all/get',  Permission.getAll);
// // router.get('/get/user-permission', authenticate, Permission.getUserPermission);



module.exports = router;