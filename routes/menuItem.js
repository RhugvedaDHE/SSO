const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const authorization = require('../middlewares/authorization');
const authenticate = require('../middlewares/authenticate');
const MenuItem = require('../controllers/menuitemController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Menu Item name is required'),
], validate, MenuItem.create);

router.get('/get/', MenuItem.get);
// router.get('/all/get',  MenuItem.getAll);
// // router.get('/get/user-permission', authenticate, MenuItem.getUserMenuItem);



module.exports = router;