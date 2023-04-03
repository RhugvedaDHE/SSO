const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const EntityType = require('../controllers/entitytypeController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Entity Type name is required'),
], validate, EntityType.create);

router.get('/get/',  EntityType.get);

module.exports = router;