const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const authenticate = require('../middlewares/authenticate');
const Notification = require('../controllers/notificationController');


// router.post('/create', [
//     check('to').not().isEmpty().withMessage('To is required'),
//     check('type').not().isEmpty().withMessage('Type is required'),
// ],validate, Notification.generate);

router.get('/get',authenticate, Notification.get);
router.post('/mark-read', authenticate, Notification.markAsRead);

module.exports = router;