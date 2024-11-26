const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Programme = require('../controllers/programmeController');


router.post('/create', [
    check('name').not().isEmpty().withMessage('Programme name is required'),
    // check('max_sem').not().isEmpty().withMessage('Max sememsters is required'),
], validate, Programme.create);


router.post('/create-bulk', Programme.createBulk);

router.post('/update', [
    check('programme_id').not().isEmpty().withMessage('Programme name is required'),
    check('duration').not().isEmpty().withMessage('Duration name is required'),
], validate, Programme.update);

router.get('/get/',  Programme.get);

router.post('/get/institute',  Programme.getInstituteProgramme);
router.post('/get/programme-semesters',  Programme.getProgSems);

router.post('/get/insttype',  Programme.getInstituteTypeProgramme);

module.exports = router;