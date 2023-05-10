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

router.post('/switch-user', authenticate, Auth.switchUserRole);

router.post('/register-superadmin',[
  check('role_id').not().isEmpty().withMessage('Your role is required').isNumeric().withMessage("Please select a valid Role"),
  check('firstname').not().isEmpty().withMessage('Your First name is required').isAlpha().withMessage('First name must have only alphabets'),
  check('lastname').not().isEmpty().withMessage('Your Last name is required').isAlpha().withMessage('Last name must have only alphabets'),
],validate,Auth.registerSuperadmin);

router.post('/register-admin',Auth.registerAdmins);


router.post('/register/company', Auth.register); // same as company admin
router.post('/register/companyHR', Auth.register);
router.post('/register/companyGuide', Auth.register);

router.post('/verify', Auth.verifyUsers);



module.exports = router;