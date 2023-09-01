const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const Auth = require('../controllers/authController');
const authenticate = require('../middlewares/authenticate');

router.post('/register', [
    check('username').not().isEmpty().withMessage('Your username is required'),
    check('password').isStrongPassword({
        minLength: 8,
        minLowercase: 1,
        minUppercase: 1,
        minNumbers: 1,
        minSymbols: 1,
        returnScore: false,
        pointsPerUnique: 1,
        pointsPerRepeat: 0.5,
        pointsForContainingLower: 10,
        pointsForContainingUpper: 10,
        pointsForContainingNumber: 10,
        pointsForContainingSymbol: 10,
    }).exists({checkFalsy: true}).
    withMessage('Password should Contain Atleast 1 uppercase, Atleast 1 lowercase, Atleast 1 special character and should be 8 chars long.'),
    check('password').exists(),
    check(
    'passwordConfirmation',
    'passwordConfirmation field must have the same value as the password field',
  )
    .exists()
    .custom((value, { req }) => value === req.body.password),
    
    check('role_id').not().isEmpty().withMessage('Your role is required').isNumeric().withMessage("Please select a valid Role"),
    check('institute_type_id').not().isEmpty().withMessage('Institute type id is required').isNumeric().withMessage("Please select a valid Institute type"),
    check('institute_id').not().isEmpty().withMessage('Institute id is required').isNumeric().withMessage("Please select a valid Institute"),
    check('firstname').not().isEmpty().withMessage('Your First name is required').isAlpha().withMessage('First name must have only alphabets'),
    check('lastname').not().isEmpty().withMessage('Your Last name is required').isAlpha().withMessage('Last name must have only alphabets'),
   
], validate, Auth.register);

router.post('/login', [
    check('username').not().isEmpty().withMessage('Your username is required'),
    check('password').not().isEmpty().isLength({min: 8}).withMessage('Must be at least 8 chars long'),
], validate, Auth.login);

router.post('/refresh-token', Auth.refreshToken);

router.post('/update-password', [  
  check('password').isStrongPassword({
    minLength: 8,
    minLowercase: 1,
    minUppercase: 1,
    minNumbers: 1,
    minSymbols: 1,
    returnScore: false,
    pointsPerUnique: 1,
    pointsPerRepeat: 0.5,
    pointsForContainingLower: 10,
    pointsForContainingUpper: 10,
    pointsForContainingNumber: 10,
    pointsForContainingSymbol: 10,
}).exists({checkFalsy: true}).
withMessage('Password should Contain Atleast 1 uppercase, Atleast 1 lowercase, Atleast 1 special character and should be 8 chars long.'),
check('password').exists(),
check(
'passwordConfirmation',
'passwordConfirmation field must have the same value as the password field',
)
.exists()
.custom((value, { req }) => value === req.body.password),
], validate, authenticate, Auth.updatePassword);


router.post('/forgot-password', [
  check('email').not().isEmpty().withMessage('Your Email is required'),
  check('password').isStrongPassword({
    minLength: 8,
    minLowercase: 1,
    minUppercase: 1,
    minNumbers: 1,
    minSymbols: 1,
    returnScore: false,
    pointsPerUnique: 1,
    pointsPerRepeat: 0.5,
    pointsForContainingLower: 10,
    pointsForContainingUpper: 10,
    pointsForContainingNumber: 10,
    pointsForContainingSymbol: 10,
}).exists({checkFalsy: true}).
withMessage('Password should Contain Atleast 1 uppercase, Atleast 1 lowercase, Atleast 1 special character and should be 8 chars long.'),
check('password').exists(),
check(
'passwordConfirmation',
'passwordConfirmation field must have the same value as the password field',
)
.exists()
.custom((value, { req }) => value === req.body.password),
], validate, Auth.forgotPassword);

router.get('/get-user-details', authenticate, Auth.getUserDetails);

router.post('/switch-user', 
[check('role_id').not().isEmpty().withMessage('Your role is required')],
validate, authenticate, Auth.switchUserRole);

router.get('/get-user-status', authenticate, Auth.getUserStatus);

router.post('/register-superadmin',[
  check('role_id').not().isEmpty().withMessage('Your role is required').isNumeric().withMessage("Please select a valid Role"),
  check('firstname').not().isEmpty().withMessage('Your First name is required').isAlpha().withMessage('First name must have only alphabets'),
  check('lastname').not().isEmpty().withMessage('Your Last name is required').isAlpha().withMessage('Last name must have only alphabets'),
],validate,Auth.registerSuperadmin);

router.post('/register-admin',
// [
// check('phone').not().isEmpty().withMessage('Your phone is required').isNumeric().withMessage("Please enter a valid Phone"),
// check('email').not().isEmpty().withMessage('Your email is required'),
// check('role_id').not().isEmpty().withMessage('Your role is required').isNumeric().withMessage("Please select a valid Role"),
// check('designation_id').not().isEmpty().withMessage('Your designation is required').isNumeric().withMessage("Please select a valid Designation"),
// check('employementtype_id').not().isEmpty().withMessage('Your employment type is required').isNumeric().withMessage("Please select a valid employment type"),
// // check('entity_type_id').not().isEmpty().withMessage('Your entity type is required').isNumeric().withMessage("Please select a valid entity type"),
// // check('cio_id').not().isEmpty().withMessage('Your organisation/institute details are required').isNumeric().withMessage("Please select a valid organisation/institute"),
// check('firstname').not().isEmpty().withMessage('Your role is required'),
// check('lastname').not().isEmpty().withMessage('Your role is required')],
// validate, 
Auth.registerAdmins);


router.post('/register/company', [
  check('email').not().isEmpty().withMessage('Your Email is required'),
  check('username').not().isEmpty().withMessage('Your Username is required'),
  check('role_id').not().isEmpty().withMessage('Your role is required').isNumeric().withMessage("Please select a valid Role"),
  check('phone').not().isEmpty().withMessage('Your phone is required').isNumeric().withMessage("Please enter a valid Phone"),
  check('firstname').not().isEmpty().withMessage('Your role is required'),
  check('lastname').not().isEmpty().withMessage('Your role is required'),
  check('password').isStrongPassword({
    minLength: 8,
    minLowercase: 1,
    minUppercase: 1,
    minNumbers: 1,
    minSymbols: 1,
    returnScore: false,
    pointsPerUnique: 1,
    pointsPerRepeat: 0.5,
    pointsForContainingLower: 10,
    pointsForContainingUpper: 10,
    pointsForContainingNumber: 10,
    pointsForContainingSymbol: 10,
}).exists({checkFalsy: true}).
withMessage('Password should Contain Atleast 1 uppercase, Atleast 1 lowercase, Atleast 1 special character and should be 8 chars long.'),
check('password').exists(),
check(
'passwordConfirmation',
'passwordConfirmation field must have the same value as the password field',
)
.exists()
.custom((value, { req }) => value === req.body.password),
], validate, Auth.register); // same as company admin

router.post('/register/companyHR', [
  check('organization_type_id').not().isEmpty().withMessage('Organisation type is required').isNumeric().withMessage("Please select a valid Organisation type"),
  check('name').not().isEmpty().withMessage('Company name is required').isAlpha().withMessage('First name must have only alphabets'),
  check('website').not().isEmpty().withMessage('Company website is required').isURL().withMessage("Please enter a valid URL"),
  check('description').not().isEmpty().withMessage('Company description is required'),
  check('firstname').not().isEmpty().withMessage('Your role is required'),], Auth.register);


router.post('/register/companyGuide', Auth.register);

router.post('/update-status', authenticate, Auth.addStatus);

//profile
router.post('/update-profile', authenticate, Auth.updateProfile);
router.post('/update-academics', authenticate, Auth.updateAcademics);


//undertaking
router.post('/sign-undertaking', [check('undertaking').not().isEmpty().withMessage('Undertaking flag is required'),], authenticate, Auth.signUndertaking);

module.exports = router;