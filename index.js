require("dotenv").config();
const express = require("express");
const bodyParser = require("body-parser");
const application = express(); // initialize our express app
const passport = require("passport");
const cron = require("node-cron");
var path = require("path");
//requiring the validator
// var expressValidator = require("express-validator");
//the app use part
// application.use(
//   expressValidator({
//     customValidators: {
//       isImage: function (value, filename) {
//         var extension = path.extname(filename).toLowerCase();
//         switch (extension) {
//           case ".jpg":
//             return ".jpg";
//           case ".jpeg":
//             return ".jpeg";
//           case ".png":
//             return ".png";
//           default:
//             return false;
//         }
//       },
//     },
//   })
// );

const cors = require("cors");
application.use(
  cors({
    origin: "*",
  })
);

// Setting up port
// const connUri = process.env.MONGO_LOCAL_CONN_URL;
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
application.use("/static", express.static("uploads"));

//setting flash
// application.use(flash());
var countryRouter = require("./routes/country");
var roleRouter = require("./routes/role");
var stateRouter = require("./routes/state");
var districtRouter = require("./routes/district");
var cityRouter = require("./routes/city");
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
application.use("/api/v1/city", cityRouter);
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
application.get("/", function (req, res) {
  console.log("on route /");
});

application.post("/q", function (req, res) {
  console.log("hey ", req.body.name);
  res.send(req.body.name);
});

// return res.status(400).send({
//     ^

// TypeError: Cannot read properties of undefined (reading 'status')
// at process.<anonymous> (C:\Users\admin\new-sequelize\index.js:172:16)
// at process.emit (node:events:513:28)
// at process._fatalException (node:internal/process/execution:149:25)
// at processPromiseRejections (node:internal/process/promises:288:13)
// at process.processTicksAndRejections (node:internal/process/task_queues:96:32)

// Node.js v18.12.1
// [nodemon] app crashed - waiting for file changes before starting...

//Error Handler
process.on("uncaughtException", function (error, result, res, next) {
  console.log("Caught exception: " + error + " bfbvuj  " + next);
  console.log("Caught exception: " + error.stack + " stacckk  " + next);
  // res.status(400).json(errorResponse(error, 400));
  // return res.status(400).send({
  //     message: "Content can not be empty!"
  //  });
  // next(createError(400));
  return 0;
});

var createError = require("http-errors");
// catch 404 and forward to error handler
application.use(function (req, res, next) {
  next(createError(400));
});

// error handler
application.use(function (err, req, res, next) {
  // set locals, only providing error in development
  console.log("inside Error Handler, ", err);
  res.sendStatus(400);
});

//cron job
var task = cron.schedule(
  "*/1 * * * *",
  async () => {
    console.log("running a task every 1 minute");
    Otp.reset_attempts();
    Otp.resetForgotPassword_attempts();
  },
  {
    scheduled: false,
  }
);

task.start();
