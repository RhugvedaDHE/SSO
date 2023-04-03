const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const OrganisationType = require('../controllers/organisationTypeController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('OrganisationType name is required'),
], validate, OrganisationType.create);

router.get('/get/',  OrganisationType.get);

module.exports = router;