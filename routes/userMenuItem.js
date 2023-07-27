const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const authorization = require('../middlewares/authorization');
const authenticate = require('../middlewares/authenticate');
const UserMenuItem = require('../controllers/userMenuItemController');


router.post('/create', [
    check('role_id').not().isEmpty().withMessage('Role is required'),
    check('menuitem_id').not().isEmpty().withMessage('Menu Item is required'),
], validate, UserMenuItem.create);

router.get('/all', UserMenuItem.getAll);

//get token based menu items
router.get('/get', authenticate, UserMenuItem.get);
// router.get('/get/user-permission', authenticate, UserMenuItem.getUserMenuItem);



module.exports = router;