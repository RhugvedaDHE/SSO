const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const authorization = require('../middlewares/authorization');
const authenticate = require('../middlewares/authenticate');
const UserPermission = require('../controllers/userPermissionController');


router.post('/create', [
    check('role_id').not().isEmpty().withMessage('Role is required'),
    check('permission_id').not().isEmpty().withMessage('Permission is required'),
], validate, UserPermission.create);

router.get('/get/', UserPermission.get);
// router.get('/all/get',  UserPermission.getAll);
// router.get('/get/user-permission', authenticate, UserPermission.getUserPermission);



module.exports = router;