require("dotenv").config();
const express = require("express");
const bodyParser = require("body-parser");
const application = express(); // initialize our express app
const passport = require("passport");
const cron = require("node-cron");
const fs = require('fs');
var path = require("path");
const morgan = require('morgan');
const winston = require('winston');
const cors = require("cors");
const helmet = require('helmet');
const { createProxyMiddleware } = require('http-proxy-middleware');
const crypto = require("crypto");

application.use(
  cors({
    // origin: "*",
    methods: 'GET, POST, PUT, DELETE',
    allowedHeaders: 'Content-Type, Authorization',
    preflightContinue: false, // Stop forwarding preflight requests
    optionsSuccessStatus: 204, // Return 204 for preflight
    maxAge: 86400 // Cache preflight for 1 day (86400 seconds)
//     // origin: "http://14.139.114.20:5000",
    // origin: "http://14.139.114.20:3000",
  })
);

//use helmet
application.use(helmet());

// Set security headers globally
application.use((req, res, next) => {
  res.setHeader('Strict-Transport-Security', 'max-age=31536000; includeSubDomains');
  res.setHeader('Content-Security-Policy', "default-src 'self'");
  res.setHeader('X-Content-Type-Options', 'nosniff');
  res.setHeader('X-Frame-Options', 'DENY');
  res.setHeader('X-XSS-Protection', '1; mode=block');
  res.setHeader('Cache-Control', 'no-store, no-cache, must-revalidate, max-age=0');
  res.setHeader('Pragma', 'no-cache');
  next();
});

//headers disable
application.disable('x-powered-by');

application.use((req, res, next) => {
  res.setHeader('X-Content-Type-Options', 'nosniff');
  next();
});

application.use((req, res, next) => {
  res.setHeader('X-XSS-Protection', '1; mode=block');
  next();
});

// Middleware to restrict HTTP methods
application.use((req, res, next) => {
  const allowedMethods = ['GET', 'POST', 'HEAD', 'PUT', 'DELETE'];
  if (!allowedMethods.includes(req.method)) {
      res.status(405).send('Method Not Allowed');
  } else {
      next();
  }
});

// Middleware to set the 'X-Frame-Options' header
application.use((req, res, next) => {
  res.setHeader('X-Frame-Options', 'DENY');
  next();
});

// Use helmet's frameguard to set the X-Frame-Options header
application.use(helmet.frameguard({ action: 'SAMEORIGIN' }));

// Disable OPTIONS method
application.use((req, res, next) => {
  if (req.method === 'OPTIONS') {
    return res.status(405).send('Method Not Allowed');  // 405 - Method Not Allowed
  }
  next();
})



// Create a write stream (in append mode)
const accessLogStream = fs.createWriteStream(path.join(__dirname, 'access.log'), { flags: 'a' });

// Setup the logger to use the stream
application.use(morgan('combined', { stream: accessLogStream }));


// Create a write stream (in append mode) for error logs
const errorLogStream = fs.createWriteStream(path.join(__dirname, 'error.log'), { flags: 'a' });

// Define a custom token to capture error messages
morgan.token('error', (req, res) => res.locals.errorMessage || '');

// Custom error log format
const errorFormat = ':method :url :status :response-time ms - :error';

// Setup morgan to use the error format and stream
application.use(morgan(errorFormat, {
  skip: (req, res) => res.statusCode < 400, // Only log error responses
  stream: errorLogStream
}));

// Middleware to simulate an error for demonstration
application.get('/error', (req, res, next) => {
  const err = new Error('Something went wrong!');
  res.locals.errorMessage = err.message;
  next(err);
});

// Error-handling middleware
application.use((err, req, res, next) => {
  res.status(500).send('Internal Server Error');
});

//logger 
// Create a logger with specific settings
const logger = winston.createLogger({
  level: 'error', // Only log errors and more severe levels
  format: winston.format.combine(
    winston.format.timestamp(),        // Add a timestamp to logs
    winston.format.json()              // Format logs as JSON
  ),
  transports: [
    new winston.transports.File({ filename: 'error.log' }),  // Log errors to a file
    new winston.transports.Console()                         // Log errors to the console
  ]
});

// Setting up port
let PORT = process.env.PORT || 3000;
application.use(bodyParser.urlencoded({ extended: true })); // parse requests of content-type - application/x-www-form-urlencoded
application.use(bodyParser.json()); // parse requests of content-type - application/json

//=== 3 - INITIALIZE PASSPORT MIDDLEWARE
application.use(passport.initialize());
require("./middlewares/jwt")(passport);

const {
  success,
  errorResponse,
  validation,
  userCredentials,
  EmailNotification,
} = require(path.resolve(__dirname, "./responseApi.js"));

//Used for static file path eg uploaded images etc:Paresh
// application.use("/static", express.static("uploads"));

//setting flash
// application.use(flash());
var countryRouter = require("./routes/country");
var roleRouter = require("./routes/role");
var stateRouter = require("./routes/state");
var districtRouter = require("./routes/district");
var talukaRouter = require("./routes/taluka");
var instituteTypeRouter = require("./routes/instituteType");
var employmentTypeRouter = require("./routes/employmentType");
var serviceRouter = require("./routes/service");
var serviceRoleRouter = require("./routes/serviceRole");
var programmeRouter = require("./routes/programme");
var classRouter = require("./routes/class");
var instituteRouter = require("./routes/institute");
var instituteProgrammeRouter = require("./routes/instituteProgramme");
var authRouter = require("./routes/auth");
var entityTypeRouter = require("./routes/entityType");
var subjectRouter = require("./routes/subject");
var courseRouter = require("./routes/course");
var departmentRouter = require("./routes/department");
var organisationTypeRouter = require("./routes/organisationType");
var semesterRouter = require("./routes/semester");
var progSubRouter = require("./routes/programmeSubject");
var otpRouter = require("./routes/otp");
var designationRouter = require("./routes/designation");

var userpersonaldetailsRouter = require("./routes/userpersonaldetails");
var dummyRouter = require("./routes/dummy");
var entityUserRouter = require("./routes/entityUser");
var evalTypesRouter = require("./routes/evalType");
var religionRouter = require("./routes/religion");
var staffRouter = require("./routes/staff");
var configRouter = require("./routes/config");
var studentOtherskillsRouter = require("./routes/studentOtherskills");
var additionalSkillsRouter = require("./routes/additionalSkills");
var durationRouter = require("./routes/duration");
var studentAdditionalSkillsRouter = require("./routes/studentAdditionalSkills");
var permissionRouter = require("./routes/permission");
var userPermissionRouter = require("./routes/userPermission");
var userMenuItemRouter = require("./routes/userMenuItem");
var menuItemRouter = require("./routes/menuItem");
var notificationRouter = require("./routes/notification");
var staffRemarksRouter = require("./routes/staffRemarks");
var companyRemarksRouter = require("./routes/companyRemarks");
var bankRouter = require("./routes/bank");
var studentEnrollmentRouter = require("./routes/studentEnrollment");
var ePramaanRouter = require("./routes/e-pramaan");
var instProgSubRouter = require("./routes/instprogsub");
var academicYearRouter = require("./routes/academicYear");
var userContactRouter = require("./routes/userContact");
var constituencyRouter = require("./routes/constituency");
var boardUniversityRouter = require("./routes/boarduniversity");
var staticRouter = require("./routes/static");

//APIs by Paresh A.
var companyRouter = require("./routes/company");
var guardianTypeRouter = require("./routes/guardianType");
var casteCategoryRouter = require("./routes/casteCategory");
var bloodGroupRouter = require("./routes/bloodGroup");
var programmeSemesterRouter = require("./routes/programmeSemester");
var genderRouter = require("./routes/gender");
var studentGuardian = require("./routes/studentGuardian");
var streamRouter = require("./routes/stream");
var instituteProgrammeCourseSubject = require("./routes/instituteProgrammeCourseSubject");
var studentMarks = require("./routes/studentMarks");
var studentResult = require("./routes/studentResult");
var student = require("./routes/student");
var studentRemarks = require("./routes/studentRemarks");
var userdocs = require("./routes/userDocs");
var userQualification = require("./routes/userQualification");
var qualificationTypes = require("./routes/qualificationTypes");

var degreeRouter = require("./routes/degree");
var percentageRouter = require("./routes/percentage");
var experienceRouter = require("./routes/experience");
var modeRouter = require("./routes/mode");
var skillRouter = require("./routes/skill");
var doctypeRouter = require("./routes/doctype");

application.use("/api/v1/country", countryRouter);
application.use("/api/v1/role", roleRouter);
application.use("/api/v1/state", stateRouter);
application.use("/api/v1/district", districtRouter);
application.use("/api/v1/taluka", talukaRouter);
application.use("/api/v1/insttype", instituteTypeRouter);
application.use("/api/v1/emptype", employmentTypeRouter);
application.use("/api/v1/service", serviceRouter);
application.use("/api/v1/servicerole", serviceRoleRouter);
application.use("/api/v1/programme", programmeRouter);
application.use("/api/v1/class", classRouter);
application.use("/api/v1/institute", instituteRouter);
application.use("/api/v1/instprog", instituteProgrammeRouter);
application.use("/api/v1/auth", authRouter);
application.use("/api/v1/enttype", entityTypeRouter);
application.use("/api/v1/subject", subjectRouter);
application.use("/api/v1/course", courseRouter);
application.use("/api/v1/department", departmentRouter);
application.use("/api/v1/organisationtype", organisationTypeRouter);
application.use("/api/v1/semester", semesterRouter);
application.use("/api/v1/programmesubject", progSubRouter);
application.use("/api/v1/otp", otpRouter);
application.use("/api/v1/designation", designationRouter);

application.use("/api/v1/userpersonaldetails", userpersonaldetailsRouter);
application.use("/api/v1/dummy", dummyRouter);
application.use("/api/v1/entityuser", entityUserRouter);
application.use("/api/v1/evalType", evalTypesRouter);
application.use("/api/v1/religion", religionRouter);
application.use("/api/v1/staff", staffRouter);
application.use("/api/v1/config", configRouter);
application.use("/api/v1/studentotherskills", studentOtherskillsRouter);
application.use("/api/v1/additionalskills", additionalSkillsRouter);
application.use("/api/v1/duration", durationRouter);
application.use(
  "/api/v1/studentadditionalskills",
  studentAdditionalSkillsRouter
);
application.use("/api/v1/permission", permissionRouter);
application.use("/api/v1/user-permission", userPermissionRouter);
application.use("/api/v1/user-menuitem", userMenuItemRouter);
application.use("/api/v1/menuitem", menuItemRouter);
application.use("/api/v1/notification", notificationRouter);
application.use("/api/v1/staff-remarks", staffRemarksRouter);
application.use("/api/v1/company-remarks", companyRemarksRouter);
application.use("/api/v1/bank", bankRouter);
application.use("/api/v1/student-enrollment", studentEnrollmentRouter);
application.use("/api/v1/e-pramaan", ePramaanRouter);
application.use("/api/v1/fee-structure", instProgSubRouter);
application.use("/api/v1/academicyear", academicYearRouter);
application.use("/api/v1/usercontact", userContactRouter);
application.use("/api/v1/constituency", constituencyRouter);
application.use("/api/v1/board-universities", boardUniversityRouter);
application.use("/static", staticRouter);

//APIs by Paresh A.
application.use("/api/v1/company", companyRouter);
application.use("/api/v1/guardiantype", guardianTypeRouter);
application.use("/api/v1/castecategory", casteCategoryRouter);
application.use("/api/v1/bloodgroup", bloodGroupRouter);
application.use("/api/v1/programmesemester", programmeSemesterRouter);
application.use("/api/v1/gender", genderRouter);
application.use("/api/v1/studentguardian", studentGuardian);
application.use("/api/v1/stream", streamRouter);
application.use(
  "/api/v1/instituteprogrammecoursesubject",
  instituteProgrammeCourseSubject
);
application.use("/api/v1/studentmarks", studentMarks);
application.use("/api/v1/studentresult", studentResult);
application.use("/api/v1/student", student);
application.use("/api/v1/studentremarks", studentRemarks);
application.use("/api/v1/userdocs", userdocs);
application.use("/api/v1/userqualification", userQualification);
application.use("/api/v1/qualificationtypes", qualificationTypes);
application.use("/api/v1/degree", degreeRouter);
application.use("/api/v1/percentage", percentageRouter);
application.use("/api/v1/experience", experienceRouter);
application.use("/api/v1/mode", modeRouter);
application.use("/api/v1/skill", skillRouter);
application.use("/api/v1/doctype", doctypeRouter);

//=== 5 - START SERVER
application.listen(PORT, () => console.log("hello:" + PORT + "/"));

//cron job
const Otp = require('./controllers/otpController');
const Auth = require('./controllers/authController');
var task = cron.schedule(
  "*/1 * * * *",
  async () => {
    console.log("running a task every 1 minute");
    Otp.reset_attempts();
    Otp.reset_verify_attempts();
    Otp.resetForgotPassword_attempts();
    Otp.resetUpdatePassword_attempts();
    // Auth.deleteExpiredTokens();
  },
  {
    scheduled: false,
  }
);

task.start();

// Error Handler
process.on("uncaughtException", function (error, result, res, next) {
  console.log("Caught exceptionnn: " + error + " bfbvuj  " + next);
  console.log("Caught exception: " + error.stack + " stacckk  " + next);
  logger.error({
    message: error,  // Log the error message
    stack: error.stack,      // Log the stack trace
    timestamp: new Date()  // Add timestamp for better tracing
  });
  // res.sendStatus(400);
  // res.status(400).json(errorResponse(error, 400));
  // return res.status(400).send({
  //     message: "Content can not be empty!"
  //  });
  // next(createError(400));
  // return 0;
  // res.status(err.statusCode || 500).json({
  //       success: false,
  //       message: err.message || "Internal Server Error",
  //       error: process.env.NODE_ENV === "development" ? err.stack : {},
  //     });
});

// // Catch 404 and forward to error handler
// application.use(function (req, res, next) {
//   next(createError(400));
// });

// General error handling middleware
application.use(function (err, req, res, next) {
  console.error("Error handler:", err);

  res.status(err.statusCode || 500).json({
    success: false,
    message: err.message || "Internal Server Error",
    error: process.env.NODE_ENV === "development" ? err.stack : {},
  });
});

//epramaan
application.get('/api/v1/e-pramaan/get-hmacc', (req, res) => {
  console.log("in linkURLL api");
  const clientId = "100001119"; //your service ID
  const scope = "openid";
  const stateIdUnprocessed = crypto.randomUUID();
  const stateId = stateIdUnprocessed.replace(/[^a-zA-Z0-9]/g, "");
  const redirectUri = "http://14.139.114.25:5000/dashboard"; //your URL goes here (SSO success URL)
  const requestUri =
    "https://epstg.meripehchaan.gov.in/openid/jwt/processJwtAuthGrantRequest.do";
  const responseType = "code";
  const aesKey = "b4c78596-a2aa-441b-afe7-85844bec3457"; //your AES key goes here
  const nonceValueUnprocessed = crypto.randomUUID();
  const nonceValue = nonceValueUnprocessed.replace(/[^a-zA-Z0-9]/g, "");
  const base64url = require("base64url");
  const codeVerifierUnprocessed = crypto.randomBytes(24).toString("hex");
  const codeVerifier = codeVerifierUnprocessed.replace(/[^a-zA-Z0-9]/g, "");
  const base64Digest = crypto
    .createHash("sha256")
    .update(codeVerifier)
    .digest("base64");
  const codeChallenge = base64url.fromBase64(base64Digest);
  const codeChallengeMethod = "S256";
  const inputValue =
    clientId +
    aesKey +
    stateId +
    nonceValue +
    redirectUri +
    scope +
    codeChallenge;
  const apiHmac = crypto
    .createHmac("sha256", aesKey)
    .update(inputValue)
    .digest("base64");

  const link =
    "https://epstg.meripehchaan.gov.in/openid/jwt/processJwtAuthGrantRequest.do?&scope=" +
    scope +
    "&response_type=" +
    responseType +
    "&redirect_uri=" +
    redirectUri +
    "&state=" +
    stateId +
    "&code_challenge_method=" +
    codeChallengeMethod +
    "&nonce=" +
    nonceValue +
    "&client_id=" +
    clientId +
    "&code_challenge=" +
    codeChallenge +
    "&request_uri=" +
    requestUri +
    "&apiHmac=" +
    apiHmac +
    "";

  // console.log("Link = " + link);
  // console.log("stateId = " + stateId);
  // console.log("nonce = " + nonceValue);
  // console.log("codeChallenge = " + codeChallenge);
  // console.log("apiHmac = " + apiHmac);
  // console.log("inputValue = " + inputValue);
  // console.log("codeVerifier = " + codeVerifier);

  const data = [link, clientId, nonceValue, codeVerifier, stateId];
try {
    const parsedUrl = new URL(link); // Ensure it's a valid URL
    return res.redirect(parsedUrl.href); // ✅ Proper way to go to ePramaan
  } catch (err) {
    console.error('Invalid URL', err);
    return res.status(400).send('Invalid redirect URL');
  }
});
//epramaan end
