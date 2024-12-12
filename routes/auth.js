const express = require("express");
const router = express.Router();
require("dotenv").config();
const { check } = require("express-validator");
const validate = require("../middlewares/validate");
const Auth = require("../controllers/authController");
const authenticate = require("../middlewares/authenticate");
const SECRET_KEY = process.env.CRYPTOJS_SECRET;
const CryptoJS = require("crypto-js");

router.post(
  "/register",
  [
    check("username").not().isEmpty().withMessage("Your username is required"),
    check("password")
      .isStrongPassword({
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
      })
      .exists({ checkFalsy: true })
      .withMessage(
        "Password should Contain Atleast 1 uppercase, Atleast 1 lowercase, Atleast 1 special character and should be 8 chars long."
      ),
      check("password")
      .exists({ checkFalsy: true })
      .withMessage("Password is required")
      .custom((encryptedPassword) => {
        try {
          // Decrypt password
          const bytes = CryptoJS.AES.decrypt(encryptedPassword, SECRET_KEY);
          const password = bytes.toString(CryptoJS.enc.Utf8);
  
          if (password.includes(" ")) {
            throw new Error("Password must not contain spaces");
          }
          return true;
        } catch (error) {
          throw new Error(error);
        }
      }),
  
    check("passwordConfirmation")
      .exists({ checkFalsy: true })
      .withMessage("Password confirmation is required")
      .custom((encryptedPasswordConfirmation, { req }) => {
        try {
          // Decrypt password and passwordConfirmation
          const passwordBytes = CryptoJS.AES.decrypt(req.body.password, SECRET_KEY);
          const decryptedPassword = passwordBytes.toString(CryptoJS.enc.Utf8);
  
          const confirmationBytes = CryptoJS.AES.decrypt(encryptedPasswordConfirmation, SECRET_KEY);
          const decryptedPasswordConfirmation = confirmationBytes.toString(CryptoJS.enc.Utf8);
  
          if (decryptedPassword !== decryptedPasswordConfirmation) {
            throw new Error("Password confirmation must match the password");
          }
          return true;
        } catch (error) {
          throw new Error(error);
        }
      }),

    check("role_id")
      .not()
      .isEmpty()
      .withMessage("Your role is required")
      .isNumeric()
      .withMessage("Please select a valid Role"),
    check("institute_type_id")
      .not()
      .isEmpty()
      .withMessage("Institute type id is required")
      .isNumeric()
      .withMessage("Please select a valid Institute type"),
    check("institute_id")
      .not()
      .isEmpty()
      .withMessage("Institute id is required")
      .isNumeric()
      .withMessage("Please select a valid Institute"),
    // check("programme_id")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your Programme is required")
    //   .isNumeric()
    //   .withMessage("Please select a valid Programme"),
    // check("class")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your class is required")
    //   .isNumeric()
    //   .withMessage("Please select a valid Class"),
    check("firstname")
      .not()
      .isEmpty()
      .withMessage("Your First name is required"),
      // .isAlpha()
      // .withMessage("First name must have only alphabets"),
    check("lastname")
      .not()
      .isEmpty()
      .withMessage("Your Last name is required"),
    check("email")
      .isEmail()
      .withMessage("Please provide a valid email address"),
    check("phone")
      .not()
      .isEmpty()
      .withMessage("Phone number is required")
      .matches(/^[0-9]{10}$/)
      .withMessage("Phone number must be 10 digits")
      .isNumeric()
      .withMessage("Phone number must contain only numeric digits"),
  ],
  validate,
  Auth.register
);

router.post(
  "/register/HSStudent",
  [
    check("username").not().isEmpty().withMessage("Your username is required"),
    check("password")
      .isStrongPassword({
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
      })
      .exists({ checkFalsy: true })
      .withMessage(
        "Password should Contain Atleast 1 uppercase, Atleast 1 lowercase, Atleast 1 special character and should be 8 chars long."
      ),
      check("password")
      .exists({ checkFalsy: true })
      .withMessage("Password is required")
      .custom((encryptedPassword) => {
        try {
          // Decrypt password
          const bytes = CryptoJS.AES.decrypt(encryptedPassword, SECRET_KEY);
          const password = bytes.toString(CryptoJS.enc.Utf8);
  
          if (!password || password.includes(" ")) {
            throw new Error("Password must not contain spaces");
          }
          return true;
        } catch (error) {
          throw new Error(error);
        }
      }),
  
    check("passwordConfirmation")
      .exists({ checkFalsy: true })
      .withMessage("Password confirmation is required")
      .custom((encryptedPasswordConfirmation, { req }) => {
        try {
          // Decrypt password and passwordConfirmation
          const passwordBytes = CryptoJS.AES.decrypt(req.body.password, SECRET_KEY);
          const decryptedPassword = passwordBytes.toString(CryptoJS.enc.Utf8);
  
          const confirmationBytes = CryptoJS.AES.decrypt(encryptedPasswordConfirmation, SECRET_KEY);
          const decryptedPasswordConfirmation = confirmationBytes.toString(CryptoJS.enc.Utf8);
  
          if (decryptedPassword !== decryptedPasswordConfirmation) {
            throw new Error("Password confirmation must match the password");
          }
          return true;
        } catch (error) {
          throw new Error(error);
        }
      }),

    check("role_id")
      .not()
      .isEmpty()
      .withMessage("Your role is required")
      .isNumeric()
      .withMessage("Please select a valid Role"),
    check("institute_type_id")
      .not()
      .isEmpty()
      .withMessage("Institute type id is required")
      .isNumeric()
      .withMessage("Please select a valid Institute type"),
    check("institute_id")
      .not()
      .isEmpty()
      .withMessage("Institute id is required")
      .isNumeric()
      .withMessage("Please select a valid Institute"),
    // check("programme_id")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your Programme is required")
    //   .isNumeric()
    //   .withMessage("Please select a valid Programme"),
    // check("class")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your class is required")
    //   .isNumeric()
    //   .withMessage("Please select a valid Class"),
    check("firstname")
      .not()
      .isEmpty()
      .withMessage("Your First name is required"),
    check("lastname")
      .not()
      .isEmpty()
      .withMessage("Your Last name is required"),
    check("email")
      .isEmail()
      .withMessage("Please provide a valid email address"),
    check("phone")
      .not()
      .isEmpty()
      .withMessage("Phone number is required")
      .matches(/^[0-9]{10}$/)
      .withMessage("Phone number must be 10 digits")
      .isNumeric()
      .withMessage("Phone number must contain only numeric digits"),
  ],
  validate,
  Auth.registerHSStudent
);

router.post(
  "/login",
  [
    check("username").not().isEmpty().withMessage("Your username is required"),
    check("password")
      .not()
      .isEmpty()
      .isLength({ min: 8 })
      .withMessage("Must be at least 8 chars long"),
  ],
  validate,
  Auth.login
);
router.post(
  "/register-epramaan",
  [
    check("username").not().isEmpty().withMessage("Your username is required"),
    check("role_id")
      .not()
      .isEmpty()
      .withMessage("Your role is required")
      .isNumeric()
      .withMessage("Please select a valid Role"),
    // check("institute_type_id")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Institute type id is required")
    //   .isNumeric()
    //   .withMessage("Please select a valid Institute type"),
    // check("institute_id")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Institute id is required")
    //   .isNumeric()
    //   .withMessage("Please select a valid Institute"),
    // check("programme_id")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your Programme is required")
    //   .isNumeric()
    //   .withMessage("Please select a valid Programme"),
    // check("class")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your class is required")
    //   .isNumeric()
    //   .withMessage("Please select a valid Class"),
    // check("current_semester")
    //   .not()
    //   .isEmpty()
    //   .withMessage("Your Current Semester is required")
    //   .isNumeric()
    //   .withMessage("Please select a valid Current Semester"),
    check("firstname")
      .not()
      .isEmpty()
      .withMessage("Your First name is required")
      ,
    check("lastname")
      .not()
      .isEmpty()
      .withMessage("Your Last name is required"),
    check("email")
      .isEmail()
      .withMessage("Please provide a valid email address"),
    check("phone")
      .not()
      .isEmpty()
      .withMessage("Phone number is required")
      .matches(/^[0-9]{10}$/)
      .withMessage("Phone number must be 10 digits")
      .isNumeric()
      .withMessage("Phone number must contain only numeric digits"),
  ],
  validate,
  Auth.createUserDetailsForEpramaan
);

router.post("/refresh-token", Auth.refreshToken);

router.post(
  "/update-password",
  [
    check("password")
      .isStrongPassword({
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
      })
      .exists({ checkFalsy: true })
      .withMessage(
        "Password should Contain Atleast 1 uppercase, Atleast 1 lowercase, Atleast 1 special character and should be 8 chars long."
      ),
      check("password")
      .exists({ checkFalsy: true })
      .withMessage("Password is required")
      .custom((encryptedPassword) => {
        try {
          // Decrypt password
          const bytes = CryptoJS.AES.decrypt(encryptedPassword, SECRET_KEY);
          const password = bytes.toString(CryptoJS.enc.Utf8);
  
          if (!password || password.includes(" ")) {
            throw new Error("Password must not contain spaces");
          }
          return true;
        } catch (error) {
          throw new Error(error);
        }
      }),
  
    check("passwordConfirmation")
      .exists({ checkFalsy: true })
      .withMessage("Password confirmation is required")
      .custom((encryptedPasswordConfirmation, { req }) => {
        try {
          // Decrypt password and passwordConfirmation
          const passwordBytes = CryptoJS.AES.decrypt(req.body.password, SECRET_KEY);
          const decryptedPassword = passwordBytes.toString(CryptoJS.enc.Utf8);
  
          const confirmationBytes = CryptoJS.AES.decrypt(encryptedPasswordConfirmation, SECRET_KEY);
          const decryptedPasswordConfirmation = confirmationBytes.toString(CryptoJS.enc.Utf8);
  
          if (decryptedPassword !== decryptedPasswordConfirmation) {
            throw new Error("Password confirmation must match the password");
          }
          return true;
        } catch (error) {
          throw new Error(error);
        }
      }),
  ],
  validate,
  authenticate,
  Auth.updatePassword
);

router.post(
  "/forgot-password",
  [
    check("email")
      .isEmail()
      .withMessage("Please provide a valid email address"),
    check("password")
      .isStrongPassword({
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
      })
      .exists({ checkFalsy: true })
      .withMessage(
        "Password should Contain Atleast 1 uppercase, Atleast 1 lowercase, Atleast 1 special character and should be 8 chars long."
      ),
      check("password")
      .exists({ checkFalsy: true })
      .withMessage("Password is required")
      .custom((encryptedPassword) => {
        try {
          // Decrypt password
          const bytes = CryptoJS.AES.decrypt(encryptedPassword, SECRET_KEY);
          const password = bytes.toString(CryptoJS.enc.Utf8);
  
          if (!password || password.includes(" ")) {
            throw new Error("Password must not contain spaces");
          }
          return true;
        } catch (error) {
          throw new Error(error);
        }
      }),
  
    check("passwordConfirmation")
      .exists({ checkFalsy: true })
      .withMessage("Password confirmation is required")
      .custom((encryptedPasswordConfirmation, { req }) => {
        try {
          // Decrypt password and passwordConfirmation
          const passwordBytes = CryptoJS.AES.decrypt(req.body.password, SECRET_KEY);
          const decryptedPassword = passwordBytes.toString(CryptoJS.enc.Utf8);
  
          const confirmationBytes = CryptoJS.AES.decrypt(encryptedPasswordConfirmation, SECRET_KEY);
          const decryptedPasswordConfirmation = confirmationBytes.toString(CryptoJS.enc.Utf8);
  
          if (decryptedPassword !== decryptedPasswordConfirmation) {
            throw new Error("Password confirmation must match the password");
          }
          return true;
        } catch (error) {
          throw new Error(error);
        }
      }),
  ],
  validate,
  Auth.forgotPassword
);

router.get("/get-user-details", authenticate, Auth.getUserDetails);

router.get("/get-hoi-details", Auth.getlistOfHois);

router.post(
  "/switch-user",
  [check("role_id").isNumeric().withMessage("Please select a valid Role")],
  validate,
  authenticate,
  Auth.switchUserRole
);

router.get("/get-user-status", authenticate, Auth.getUserStatus);

router.post(
  "/register-superadmin",
  [
    check("role_id").isNumeric().withMessage("Please select a valid Role"),
    check("firstname")
      .not()
      .isEmpty()
      .withMessage("Your First name is required"),
    check("lastname")
      .not()
      .isEmpty()
      .withMessage("Your Last name is required"),
    check("email")
      .isEmail()
      .withMessage("Please provide a valid email address"),
    check("phone")
      .matches(/^[0-9]{10}$/)
      .withMessage("Phone number must be 10 digits")
      .isNumeric()
      .withMessage("Phone number must contain only numeric digits"),
  ],
  validate,
  Auth.registerSuperadmin
);

router.post(
  "/register-admin",
  [
    check("role_id").isNumeric().withMessage("Please select a valid Role"),
    check("firstname")
      .not()
      .isEmpty()
      .withMessage("Your First name is required"),
    check("lastname")
      .not()
      .isEmpty()
      .withMessage("Your Last name is required"),
    check("email")
      .isEmail()
      .withMessage("Please provide a valid email address"),
    check("phone")
      .matches(/^[0-9]{10}$/)
      .withMessage("Phone number must be 10 digits")
      .isNumeric()
      .withMessage("Phone number must contain only numeric digits"),
  ],
  validate,
  Auth.registerAdmins
);

router.post(
  "/register/company",
  [
    check("role_id").isNumeric().withMessage("Please select a valid Role"),
    check("firstname")
      .not()
      .isEmpty()
      .withMessage("Your First name is required"),
    check("lastname")
      .not()
      .isEmpty()
      .withMessage("Your Last name is required"),
    check("email")
      .isEmail()
      .withMessage("Please provide a valid email address"),
    check("phone")
      .matches(/^[0-9]{10}$/)
      .withMessage("Phone number must be 10 digits")
      .isNumeric()
      .withMessage("Phone number must contain only numeric digits"),

    check("username").not().isEmpty().withMessage("Your Username is required"),

    check("password")
      .isStrongPassword({
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
      })
      .exists({ checkFalsy: true })
      .withMessage(
        "Password should Contain Atleast 1 uppercase, Atleast 1 lowercase, Atleast 1 special character and should be 8 chars long."
      ),
    check("password")
      .exists()
      .custom((value) => {
        if (value.includes(" ")) {
          throw new Error("Password must not contain spaces");
        }
        return true;
      }),
    check(
      "passwordConfirmation",
      "Confirm password field must have the same value as the password field"
    )
      .exists()

      .custom((value, { req }) => {
        if (value !== req.body.password) {
          throw new Error("Passwords do not match");
        }
        return true;
      }),
    check("organisation_type_id")
      .isNumeric()
      .withMessage("Please select a valid Organisation type"),
    check("owner_type_id")
      .isNumeric()
      .withMessage("Please select a valid Owner type"),
    check("owner_id").isNumeric().withMessage("Please select a valid Owner"),
    check("state_id").isNumeric().withMessage("Please select a valid State"),
    check("district_id")
      .isNumeric()
      .withMessage("Please select a valid District"),
    check("taluka_id").isNumeric().withMessage("Please select a valid Taluka"),
    check("country_id")
      .isNumeric()
      .withMessage("Please select a valid Country"),
    check("name").not().isEmpty().withMessage("Your Company name is required"),
    check("village").isAlpha().withMessage("Please select a valid Village"),
    check("website")
      .notEmpty()
      .isURL()
      .trim()
      .escape()
      .withMessage("Please enter a valid Website URL"),
    check("description")
      .not()
      .isEmpty()
      .withMessage("Your Company description is required")
      .isLength({ max: 100 })
      .withMessage("Description must be 100 characters or less"),
    check("landmark")
      .not()
      .isEmpty()
      .withMessage("Your landmark is required")
      .isLength({ max: 50 })
      .withMessage("Landmark must be 50 characters or less"),
    check("street").not().isEmpty().withMessage("Street name is required"),
    check("pincode")
      .matches(/^[0-9]{6}$/)
      .withMessage("Pincode number must be 6 digits")
      .isNumeric()
      .withMessage("Pincode number must contain only numeric digits"),
  ],
  validate,
  Auth.register
); // same as company admin

router.post(
  "/register/companyHR",
  [
    check("organization_type_id")
      .not()
      .isEmpty()
      .withMessage("Organisation type is required")
      .isNumeric()
      .withMessage("Please select a valid Organisation type"),
    check("name")
      .not()
      .isEmpty()
      .withMessage("Company name is required")
      .isAlpha()
      .withMessage("First name must have only alphabets"),
    check("website")
      .not()
      .isEmpty()
      .withMessage("Company website is required")
      .isURL()
      .withMessage("Please enter a valid URL"),
    check("description")
      .not()
      .isEmpty()
      .withMessage("Company description is required"),
    check("firstname")
      .not()
      .isEmpty()
      .withMessage("Your firstname is required"),
  ],
  validate,
  Auth.register
);

router.post("/register/companyGuide", Auth.register);

router.post(
  "/update-status",
  [
    check("status").isAlpha().withMessage("Status is required"),
    check("is_verified").isBoolean().withMessage("Select a verified flag"),
  ],
  validate,
  authenticate,
  Auth.addStatus
);

//verify student
router.post(
  "/verify-student",
  [
    check("status").isAlpha().withMessage("Status is required"),
    check("user_id").isNumeric().withMessage("Select a valid user_id"),
  ],
  validate,
  authenticate,
  Auth.verifyStudent
);

//profile
router.post(
  "/update-profile",
  [
    check("firstname").isAlpha().withMessage("Please enter a valid First name"),
    // check("lastname").isAlpha().withMessage("Please enter a valid First name"),
    check("email").isEmail().withMessage("Please enter a valid Email"),
    check("phone")
      .matches(/^[0-9]{10}$/)
      .withMessage("Phone number must be 10 digits")
      .isNumeric()
      .withMessage("Phone number must contain only numeric digits"),
    check("aadhar")
      .matches(/^[0-9]{12}$/)
      .withMessage("Aadhar number must be 12 digits")
      .isNumeric()
      .withMessage("Aadhar number must contain only numeric digits"),
      // check('dob')
      //   .isDate().withMessage('Please select a valid Date of birth')
        // .custom((value) => {
        //     const dob = new Date(value);
        //     console.log(dob)
        //     const today = new Date();
        //     let age = today.getFullYear() - dob.getFullYear();
        //     const monthDifference = today.getMonth() - dob.getMonth();
        //     const dayDifference = today.getDate() - dob.getDate();

        //     if (
        //         age > 25 ||
        //         (age === 25 && (monthDifference > 0 || (monthDifference === 0 && dayDifference >= 0)))
        //     ) {
        //         throw new Error('Age must not exceed 25 years');
        //     }

        //     return true;
        // })
    check("physically_disabled")
      .isBoolean()
      .withMessage("Please specify if the person is specially abled or not"),
    check("castecategory_id")
      .isNumeric()
      .withMessage("Please enter a valid Caste-category"),
    check("religion_id")
      .not()
      .isEmpty()
      .withMessage("Religion field is required")
      .isNumeric()
      .withMessage("Please enter a valid Religion"),
    check("nationality")
      .not()
      .isEmpty()
      .withMessage("Nationality field is required")
      .isNumeric()
      .withMessage("Please enter a valid Nationality"),
    check("blood_group")
      .not()
      .isEmpty()
      .withMessage("Blood group field is required")
      .isNumeric()
      .withMessage("Please enter a valid Blood group"),
    check("gender")
      .not()
      .isEmpty()
      .withMessage("Your gender is required")
      .isNumeric()
      .withMessage("Please enter a valid Gender"),
    check("state_id").isNumeric().withMessage("Please select a valid State"),
    check("district_id").isNumeric().withMessage("Please select a valid District"),
    check("taluka_id").isNumeric().withMessage("Please select a valid Taluka"),
    check("country_id").isNumeric().withMessage("Please select a valid Country"),
    check("village").isAlpha().withMessage("Please select a valid Village"),
    check("pincode")
      .matches(/^[0-9]{6}$/)
      .withMessage("Pincode number must be 6 digits")
      .isNumeric()
      .withMessage("Pincode number must contain only numeric digits"),
    check("address")
      .not()
      .isEmpty()
      .withMessage("Your address is required")
      .isLength({ max: 50 })
      .withMessage("Address must be 50 characters or less"),
  ],
  authenticate,
  validate,
  Auth.updateProfile
);

router.post("/update-academics", authenticate, Auth.updateAcademics);

//test notifications
router.get("/create-notification", Auth.createNotification);

//undertaking
router.post(
  "/sign-undertaking",
  [
    check("undertaking")
      .not()
      .isEmpty()
      .withMessage("Undertaking flag is required"),
  ],
  authenticate,
  Auth.signUndertaking
);
router.post(
  "/check-undertaking-status",
  authenticate,
  Auth.checkIfUndertakingSigned
);

router.post(
  "/register-GEDCadmin",
  Auth.registerGEDCAdmin
);

router.post(
  "/register-bulk-users",
  Auth.registerbulkUsers
);
module.exports = router;
