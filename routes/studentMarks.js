const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const studentMarks = require('../controllers/studentmarksController');
const authenticate = require('../middlewares/authenticate');
//var multer = require('multer');


console.log("In studentMarks routes");

// Create a new StudentMarks
// router.post("/",[
//     check('student_enrollment_id').not().isEmpty().withMessage('Student enrollment ID is required'),
// ], validate, studentMarks.create);

router.get("/all/:id", studentMarks.findAll);

// router.get("/active", studentMarks.findAllActive);

// router.post("/:id", studentMarks.findOne);


router.post("/update-marks", authenticate, studentMarks.updateMarks);


// router.delete("/:id", studentMarks.delete);

// router.delete("/", studentMarks.deleteAll);
module.exports = router;
