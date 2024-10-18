const jwt = require("jsonwebtoken");
require("dotenv").config();

const bcrypt = require("bcryptjs");
const db = require("../models");
//const uploadFile = require("../middleware/upload");
const StudentMarks = require("../models").StudentMarks;
const StudentEnrollment = require("../models").StudentEnrollment;
const Programme = require("../models").Programme;
const Class = require("../models").Class;
const Subject = require("../models").Subject;
const InstituteProgramme = require("../models").InstituteProgramme;
const UserDocs = require("../models").UserDocs;
const Institute = require("../models").Institute;
const InstituteType = require("../models").InstituteType;
const Semester = require("../models").Semester;
const Stream = require("../models").Stream;
const DocumentType = require("../models").DocumentType;
const EvalTypes = require("../models").EvalTypes;
const { success, errorResponse, validation } = require("../responseApi");
const e = require("express");
// const { Stream } = require("winston/lib/winston/transports");

//const db = require("../models");

//const StudentMarks = db.studentMarks;
const Op = require("sequelize").Op;

// Create and Save a new StudentMarks
exports.create = async (req, res) => {
  // Create a check if student has more than one pursuing
  let pursuing = StudentEnrollment.findAll({
    attributes: ["id"],
    where: {
      user_id: req.user.id,
      is_active: 1,
    },
  });
  let last_qual_sem = {};
  let count_last_qual_sem = 0;
  // if (pursuing.length <= 1) {
  // //check if student has already selected last qualifying exam
  // count_last_qual_year = StudentMarks.findAll({
  //   where: {
  //     student_enrollment_id: pursuing.id,
  //     last_qual_sem: true,
  //   },
  // });
  // res
  //   .status(200)
  //   .json(
  //     success(
  //       "A student cannot be enrolled in more than one degree program at a time!"
  //     )
  //   );
  // }
  // if (count_last_qual_year.length) {
  //   res
  //     .status(200)
  //     .json(success("A student can only complete one semester at a time!"));
  // } else {
  let instituteProgramme = await InstituteProgramme.findOne({
    attributes: ["id", "institute_id", "programme_id"],
    where: {
      institute_id: req.body.institute_id,
      programme_id: req.body.programme_id,
    },
  });

  const studentEnrollment = {
    user_id: req.user.id,
    institute_programme_id: instituteProgramme.id,
    subject_id: req.body.subject_id,
    academic_year_id: req.body.academic_year,
    current_semester_id: req.body.current_semester_id,
    current_class_id: req.body.current_class_id,
    other_institute_name: req.body.other_institute_name,
    other_programme_name: req.body.other_programme_name,
    other_subject_name: req.body.other_subject_name,
    consolidated_total_marks: req.body.consolidated_total_marks,
    consolidated_marks_obtained: req.body.consolidated_marks_obtained,
    consolidated_grade_obtained: req.body.consolidated_grade_obtained,
    board_university: req.body.board_university,
    month_year: req.body.month_year,
    userdoc_id: req.body.userdoc_id,
    is_active: req.body.pursuing,
  };

  if (pursuing.length == 1) {
    await StudentEnrollment.update(studentEnrollment, {
      where: {
        user_id: req.user.id,
        institute_programme_id: instituteProgramme.id,
        subject_id: req.body.subject_id,
      },
    })
      .then(async (dataEnroll) => {
        const studentMarks = {
          student_enrollment_id: data.id,
          semester_id: req.body.semester_id,
          eval_type_id: req.body.eval_type_id,
          total_marks: req.body.total_marks,
          marks_obtained: req.body.marks_obtained,
          grade_obtained: req.body.grade_obtained,
          last_qual_sem: req.body.last_qual_sem,
          month_year: req.body.month_year,
          userdoc_id: req.body.userdoc_id,
          active: req.body.active ? req.body.active : true,
          updateAt: null,
        };

        if (req.body.pursuing == 1 && req.body.hasmarks) {
          

          await StudentMarks.update(studentMarks, {
            where: {
              student_enrollment_id: dataEnroll.id,
              semester_id: req.body.semester_id,
            },
          }).then((data) => {
            res
              .status(200)
              .json(success("Student-Enrollment+Marks created successfully!"));
          });
        }

        
        // res
        //   .status(200)
        //   .json(
        //     success(
        //       "nlebbvb Student-Enrollment+Marks created successfully!",
        //       dataEnroll
        //     )
        //   );
        if (dataEnroll) {
          res
            .status(200)
            .json(success("Student-Enrollment created successfully!"));
        }
      })
      .catch((err) => {
        res.status(400).json(errorResponse(err, 400));
      });
  } else {
    //pursuing 0
    //create a new one
    await StudentEnrollment.create(studentEnrollment)
      .then(async (dataEnroll) => {
        res
          .status(200)
          .json(
            success(
              "before nlebbvb Student-Enrollment+Marks created successfully!",
              typeof req.body.pursuing
            )
          );
        if (Number(req.body.pursuing) == 0 && !Boolean(req.body.hasmarks)) {
          
          const studentMarks = {
            student_enrollment_id: data.id,
            semester_id: req.body.semester_id,
            eval_type_id: req.body.eval_type_id,
            total_marks: req.body.total_marks,
            marks_obtained: req.body.marks_obtained,
            grade_obtained: req.body.grade_obtained,
            last_qual_sem: req.body.last_qual_sem,
            month_year: req.body.month_year,
            userdoc_id: req.body.userdoc_id,
            active: req.body.active ? req.body.active : true,
            updateAt: null,
          };

          await StudentMarks.create(studentMarks).then((data) => {
            res
              .status(200)
              .json(success("Student-Enrollment+Marks created successfully!"));
          });
        } 
        res
          .status(200)
          .json(success("Student-Enrollment created successfully!"));
       
      })
      .catch((err) => {
        res.status(400).json(errorResponse(err, 400));
      });
  }

  // }
};

// // Create and Save a new StudentMarks
exports.createEnrollment = async (req, res) => {
  try {
    const studentenroll = await StudentEnrollment.findAll({
      where: {
        user_id: req.user.id,
        institute_id: req.body.institute_id,
        programme_id: req.body.programme_id,
        is_active: 1,  // Use boolean instead of 1
      },
    });
  
    if (studentenroll.length > 1) {
      return res.status(400).json(errorResponse("Cannot pursue 2 courses at a time!", 400));
    }

    const studentEnrollment = {
      user_id: req.user.id,
      qual_type_id: req.body.qual_type_id,
      evaltype_id: req.body.eval_type_id,
      stream_id: req.body.stream_id,
      institute_id: req.body.institute_id,
      programme_id: req.body.programme_id,
      subject_id: req.body.subject_id,
      userdoc_id: req.body.userdoc_id,
      academic_year_id: req.body.academic_year,
      current_semester_id: req.body.current_semester_id,
      current_class_id: req.body.current_class_id,
      other_institute_name: req.body.other_institute_name,
      other_programme_name: req.body.other_programme_name,
      other_subject_name: req.body.other_subject_name,
      consolidated_total_marks: req.body.consolidated_total_marks,
      consolidated_marks_obtained: req.body.consolidated_marks_obtained,
      consolidated_grade_obtained: req.body.consolidated_grade_obtained,
      board_university: req.body.board_university,
      month_year: req.body.month_year,
      is_active: req.body.pursuing, // Ensure this is a boolean value
    };

    if (req.body.enrollment_id) {
      const [updatedRowsCount, dataEnroll] = await StudentEnrollment.update(studentEnrollment, {
        where: {
          id: req.body.enrollment_id,
        },
        returning: true,  // This will return the updated rows
      });

      // Ensure there was an update
      if (updatedRowsCount === 0) {
        return res.status(404).json(errorResponse("Enrollment not found", 404));
      }

      return res.status(200).json(success("Student-Enrollment updated successfully!", dataEnroll[0]));
    } else {
      const dataEnroll = await StudentEnrollment.create(studentEnrollment);
      return res.status(200).json(success("Student-Enrollment created successfully!", dataEnroll));
    }
  } catch (err) {
    console.error(err); // Log the error for debugging
    return res.status(400).json(errorResponse("Internal server error", 500)); // More generic error message
  }
}


// exports.createEnrollment = async (req, res) => {
  

//   let studentenroll = await StudentEnrollment.findAll({
//     where: {
//       institute_id: req.body.institute_id,
//       programme_id: req.body.programme_id,
//       is_active: 1,
//     },
//   });
//   if(studentenroll.length > 1){
//     res.status(400).json(errorResponse("Cannot pursue 2 courses at a time! ", 400));

//   }
  
//   const studentEnrollment = {
//     user_id: req.user.id,
//     qual_type_id: req.body.qual_type_id,
//     evaltype_id: req.body.eval_type_id,
//     stream_id: req.body.stream_id,
//     institute_id: req.body.institute_id,
//     programme_id: req.body.programme_id,
//     subject_id: req.body.subject_id,
//     userdoc_id: req.body.userdoc_id,
//     academic_year_id: req.body.academic_year,
//     current_semester_id: req.body.current_semester_id,
//     current_class_id: req.body.current_class_id,
//     other_institute_name: req.body.other_institute_name,
//     other_programme_name: req.body.other_programme_name,
//     other_subject_name: req.body.other_subject_name,
//     consolidated_total_marks: req.body.consolidated_total_marks,
//     consolidated_marks_obtained: req.body.consolidated_marks_obtained,
//     consolidated_grade_obtained: req.body.consolidated_grade_obtained,
//     board_university: req.body.board_university,
//     month_year: req.body.month_year,
//     is_active: req.body.pursuing, //current or not
//   };

//   if (req.body.enrollment_id) {
//     await StudentEnrollment.update(studentEnrollment, {
//       where: {
//         id: req.body.enrollment_id,
//       },
//     })
//       .then(async (dataEnroll) => {
//         res
//           .status(200)
//           .json(
//             success("Student-Enrollment updated successfully!", dataEnroll)
//           );
//       })
//       .catch((err) => {
//         res.status(400).json(errorResponse(err, 400));
//       });
//   } else {
//     //create a new one
//     await StudentEnrollment.create(studentEnrollment)
//       .then(async (dataEnroll) => {
//         res
//           .status(200)
//           .json(
//             success("Student-Enrollment created successfully!", dataEnroll)
//           );
//       })
//       .catch((err) => {
//         res.status(400).json(errorResponse(err, 400));
//       });
//   }
// };

// Create and Save a new StudentMarks
exports.createMarks = async (req, res) => {
  console.log("in controller studentMarks");

  const studentMarks = {
    student_enrollment_id: req.body.enrollment_id,
    semester_id: req.body.semester_id,
    eval_type_id: req.body.eval_type_id,
    total_marks: req.body.total_marks,
    marks_obtained: req.body.marks_obtained,
    grade_obtained: req.body.grade_obtained,
    last_qual_sem: req.body.last_qual_sem,
    month_year: req.body.month_year,
    userdoc_id: req.body.userdoc_id,
    active: req.body.active ? req.body.active : true,
    updateAt: null,
  };

  if (req.body.marks_id) {
    await StudentMarks.update(studentMarks, {
      where: {
        id: req.body.marks_id,
      },
    })
      .then((data) => {
        res
          .status(200)
          .json(success("Student-Marks updated successfully!", data));
      })

      .catch((err) => {
        res.status(400).json(errorResponse(err, 400));
      });
  } else {
    //create a new one
    await StudentMarks.create(studentMarks)
      .then((data) => {
        res
          .status(200)
          .json(success("Student-marks created successfully!", data));
      })
      .catch((err) => {
        res.status(400).json(errorResponse(err, 400));
      });
  }
};

// Retrieve all StudentMarks from the database.
exports.findAll = async (req, res) => {
   let finalData = [];
  // const studentEnrollmentId = req.params.id;
  let userId = req.user.id;

  let studentEnrollments = await StudentEnrollment.findAll({
    where: {
      user_id: req.user.id,
    },
    include: [
      {
        model: Subject,
        attributes: ["id", "name"],
      },
      {
        model: Class,
        attributes: ["id", "name"],
      },
      {
        model: EvalTypes,
        required: false, // This makes the inclusion optional
        where: {
          id: {
            [Op.not]: null, // Include EvalTypes only when id is not null
          },
        },
      },
      {
        model: Semester,
        attributes: ["name", "id"],
        required: false, // This makes the join optional
        where: {
          id: {
            [Op.ne]: 0, // Only include if semester_id is not zero
          },
        },
      },
      {
        model: Stream,
        attributes: ["name"],
        required: false, // This makes the join optional
        where: {
          id: {
            [Op.ne]: 0, // Only include if semester_id is not zero
          },
        },
      },
    ],
  });
  if (studentEnrollments) {
    let finalMarksData;
    let userDocType;
    let userDoctypeId;
    let userDocName;
    let userdocMark;
    let filePathMark = (filePathEnrollment = null);
    for (const studentEnrollment of studentEnrollments) {
      let evalType = null;
      if (studentEnrollment.evaltype_id) {
        evalType = await EvalTypes.findOne({
          where: {
            id: studentEnrollment.evaltype_id,
          },
        });
      }

      let programmeDetails = await Programme.findOne({
        where: {
          id: studentEnrollment.programme_id,
        },
      });

      let instituteDetails = await Institute.findOne({
        where: {
          id: studentEnrollment.institute_id,
        },
        include: [
          {
            model: InstituteType,
            attributes: ["name"],
          },
        ],
      });
      let userdocEnrollment = null;
      if (studentEnrollment.userdoc_id) {
        userdocEnrollment = await UserDocs.findOne({
          where: {
            // user_id: req.user.id,
            id: studentEnrollment.userdoc_id,
          },
          include: [
            {
              model: DocumentType,
              attributes: ["name"],
            },
          ],
        });
      
      filePathEnrollment =
        userdocEnrollment != null
          ? req.protocol +
            "://" +
            req.get("host") +
            "/static/user/" +
            userdocEnrollment.filename
          : null;

      userDocName =
        userdocEnrollment != null ? userdocEnrollment.filename : null;
      userDocType = userdocEnrollment != null ? null : null;
      userDoctypeId =
        userdocEnrollment != null ? userdocEnrollment.doc_type_id : null;
      }
      let studentMarks = null;
      if (studentEnrollment.is_active) {
        studentMarks = await StudentMarks.findAll({
          include: [
            {
              model: Semester,
              attributes: ["id", "name"],
            },
            {
              model: EvalTypes,
              attributes: ["id", "name"],
            },
          ],
          where: {
            active: true,
            student_enrollment_id: studentEnrollment.id,
          },
        });

        if (studentMarks) {
          finalMarksData = [];
          for (const smark of studentMarks) {

            if(smark.userdoc_id){
              userdocMark = await UserDocs.findOne({
                where: {
                  // user_id: req.user.id,
                  id: smark.userdoc_id,
                },
                include: [
                  {
                    model: DocumentType,
                    attributes: ["name"],
                  },
                ],
              });
            }
            filePathMark =
              userdocMark != null
                ? req.protocol +
                  "://" +
                  req.get("host") +
                  "/static/user/" +
                  userdocMark.filename
                : null;
              userDocName =
                userdocMark != null ? userdocMark.filename : null;
              userDocType = userdocMark != null ? null : null;
              userDoctypeId =
                userdocMark != null ? userdocMark.doc_type_id : null;
            
           
            finalMarksData.push({
              userMarks_id: smark ? smark.id : null,
              userDoc_mark: smark ? filePathMark : null,
              userDoc_type_mark: smark ? userDocType : null,
              userDoc_type_id_mark: smark ? userDoctypeId : null,
              userDoc_type_name_mark: smark ? userDocName : null,
              userMarks_semester_id: smark ? smark.semester_id : null,
              userMarks_semester_name: smark.Semester ? smark.Semester.name : null,
              userMarks_eval_type_id: smark ? smark.eval_type_id : null,
              userMarks_eval_type_name: smark.EvalType ? smark.EvalType.name : null,
              userMarks_total_marks: smark ? smark.total_marks : null,
              userMarks_marks_obtained: smark ? smark.marks_obtained : null,
              userMarks_grade_obtained: smark ? smark.grade_obtained : null,
              userMarks_month_year: smark ? smark.month_year : null,
            });
          }// close for loop
          
            // userdocMark = await UserDocs.findOne({
            //   where: {
            //     id: smark.userdoc_id,
            //   },
            //   include: [
            //     {
            //       model: DocumentType,
            //       attributes: ["name"],
            //     },
            //   ],
            // });

            // filePathMark = userdocMark
            //   ? req.protocol +
            //     "://" +
            //     req.get("host") +
            //     "/static/user/" +
            //     userdocMark.filename
            //   : null;
            // userDocName = userdocMark ? userdocMark.filename : null;
            // userDocType = null; //userdocMark ? userdocMark.DocumentType.name :
            // userDoctypeId = userdocMark ? userdocMark.doc_type_id : null;
          }
        
      }// hasmarks

      finalData.push({
        // id: d.id,

        enrollment_id: studentEnrollment ? studentEnrollment.id : null,
        program_id: programmeDetails ? programmeDetails.id : null,
        program_title: programmeDetails ? programmeDetails.name : null,
        board_university: studentEnrollment.board_university,
        institute_type_id: instituteDetails
          ? instituteDetails.institute_type_id
          : null,
        institute_type_name: instituteDetails
          ? instituteDetails.InstituteType.name
          : null,
        institute_id: instituteDetails ? instituteDetails.id : null,
        institute_name: instituteDetails ? instituteDetails.name : null,
        academic_year_id: studentEnrollment.academic_year_id,
        current_semester_id: studentEnrollment.Semester
          ? studentEnrollment.Semester.id
          : null,
        current_semester_name: studentEnrollment.Semester
          ? studentEnrollment.Semester.name
          : null,
        current_class_id: studentEnrollment.Class
          ? studentEnrollment.Class.id
          : null,
        current_class_name: studentEnrollment.Class
          ? studentEnrollment.Class.name
          : null,
        current_class_name: studentEnrollment.Class
          ? studentEnrollment.Class.name
          : null,
        other_institute_name: studentEnrollment.other_institute_name,
        other_programme_name: studentEnrollment.other_programme_name,
        other_subject_name: studentEnrollment.other_subject_name,
        subject_id: studentEnrollment.Subject
          ? studentEnrollment.Subject.id
          : null,
        subject_name: studentEnrollment.Subject
          ? studentEnrollment.Subject.name
          : null,
        stream_id: studentEnrollment.stream_id,
        stream_name: studentEnrollment.Stream
          ? studentEnrollment.Stream.name
          : null,
        eval_type_id: evalType ? evalType.id : null,
        eval_type: evalType ? evalType.name : null,
        consolidated_total_marks: studentEnrollment.consolidated_total_marks,
        consolidated_marks_obtained:
          studentEnrollment.consolidated_marks_obtained,
        consolidated_grade_obtained:
          studentEnrollment.consolidated_grade_obtained,
        board_university: studentEnrollment.board_university,
        month_year: studentEnrollment.month_year,
        is_active: studentEnrollment.is_active,
        doc_type_id: userDoctypeId ? userDoctypeId : null,
        userdoc_id: studentEnrollment ? studentEnrollment.userdoc_id : null,
        userDoc_type: userDocType,
        userDocFileName: userDocName,
        userDoc: studentEnrollment ? filePathEnrollment : null,
        last_qual_sem: studentMarks ? studentMarks.last_qual_sem : null,

        //marks data
        // userMarks_id: studentMark ? studentMark.id : null,
        // userDoc_mark: studentMark ? filePathMark : null,
        // userMarks_semester_id: studentMark ? studentMark.semester_id : null,
        // userMarks_eval_type_id: studentMark ? studentMark.eval_type_id : null,
        // userMarks_total_marks: studentMark ? studentMark.total_marks : null,
        // userMarks_marks_obtained: studentMark ? studentMark.marks_obtained : null,
        // userMarks_grade_obtained: studentMark ? studentMark.grade_obtained : null,
        // userMarks_month_year: studentMark ? studentMark.month_year : null,
        marksData: finalMarksData ? finalMarksData : null,
      });
    } //end for enrollments
  }
    if (finalData) {
      res
        .status(200)
        .json(success("Student Marks fetched successfully!", finalData));
    } else {
      res.status(400).json(errorResponse(`Cannot find Student's Marks`, 400));
    }
  

};

// exports.findAll = async (req, res) => {
//   try {
//     let userId = req.user.id;
    
//     // Fetch student enrollments and related data
//     let studentEnrollments = await StudentEnrollment.findAll({
//       where: { user_id: userId },
//       include: [
//         { model: Subject, attributes: ["id", "name"] },
//         { model: Class, attributes: ["id", "name"] },
//         { model: EvalTypes, attributes: ["id", "name"], required: false },
//         { model: Semester, attributes: ["id", "name"], required: false },
//         { model: Stream, attributes: ["id", "name"], required: false },
//         { 
//           model: Programme, 
//           attributes: ["id", "name"]
//         },
//         { 
//           model: Institute, 
//           attributes: ["id", "name", "institute_type_id"], 
//           include: [{ model: InstituteType, attributes: ["name"] }]
//         },
//       ]
//     });

//     if (!studentEnrollments.length) {
//       return res.status(400).json(errorResponse(`Cannot find Student's Marks`, 400));
//     }

//     let finalData = [];
//     for (const studentEnrollment of studentEnrollments) {
//       // Fetch marks for the enrollment
//       let studentMarks = await StudentMarks.findAll({
//         where: { student_enrollment_id: studentEnrollment.id, active: true },
//         include: [
//           { model: Semester, attributes: ["id", "name"] },
//           { model: EvalTypes, attributes: ["id", "name"] }
//         ]
//       });

//       // Prepare marks data
//       let marksData = await Promise.all(studentMarks.map(async (smark) => {
//         let userdocMark = smark.userdoc_id 
//           ? await UserDocs.findOne({
//               where: { id: smark.userdoc_id },
//               include: [{ model: DocumentType, attributes: ["name"] }]
//             }) 
//           : null;

//         let filePathMark = userdocMark ? `${req.protocol}://${req.get("host")}/static/user/${userdocMark.filename}` : null;

//         return {
//           userMarks_id: smark.id,
//           userDoc_mark: filePathMark,
//           userDoc_type_name_mark: userdocMark ? userdocMark.filename : null,
//           userMarks_semester_name: smark.Semester ? smark.Semester.name : null,
//           userMarks_eval_type_name: smark.EvalType ? smark.EvalType.name : null,
//           userMarks_total_marks: smark.total_marks,
//           userMarks_marks_obtained: smark.marks_obtained,
//           userMarks_grade_obtained: smark.grade_obtained,
//           userMarks_month_year: smark.month_year,
//         };
//       }));

//       // Prepare enrollment data
//       let userdocEnrollment = studentEnrollment.userdoc_id 
//         ? await UserDocs.findOne({
//             where: { id: studentEnrollment.userdoc_id },
//             include: [{ model: DocumentType, attributes: ["name"] }]
//           })
//         : null;

//       let filePathEnrollment = userdocEnrollment ? `${req.protocol}://${req.get("host")}/static/user/${userdocEnrollment.filename}` : null;

//       finalData.push({
//         enrollment_id: studentEnrollment.id,
//         program_id: studentEnrollment.Programme ? studentEnrollment.Programme.id : null,
//         program_title: studentEnrollment.Programme ? studentEnrollment.Programme.name : null,
//         institute_type_name: studentEnrollment.Institute.InstituteType ? studentEnrollment.Institute.InstituteType.name : null,
//         institute_name: studentEnrollment.Institute ? studentEnrollment.Institute.name : null,
//         subject_name: studentEnrollment.Subject ? studentEnrollment.Subject.name : null,
//         stream_name: studentEnrollment.Stream ? studentEnrollment.Stream.name : null,
//         current_class_name: studentEnrollment.Class ? studentEnrollment.Class.name : null,
//         eval_type: studentEnrollment.EvalTypes ? studentEnrollment.EvalTypes.name : null,
//         userDocFileName: userdocEnrollment ? userdocEnrollment.filename : null,
//         userDoc: filePathEnrollment,
//         marksData
//       });
//     }

//     res.status(200).json(success("Student Marks fetched successfully!", finalData));
//   } catch (err) {
//     res.status(500).json(errorResponse("An error occurred while fetching student marks", 500));
//   }
// };


// Find a single StudentMarks with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  StudentMarks.findByPk(id)
    .then((data) => {
      if (data) {
        res
          .status(200)
          .json(success("Student Marks fetched successfully!", data));
      } else {
        res
          .status(400)
          .json(errorResponse(`Cannot find Student Marks with id=${id}.`, 400));
      }
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + " Error retrieving Student Marks with id=" + id,
            400
          )
        );
    });
};

// Update a StudentMarks by the id in the request
exports.updateMarks = async (req, res) => {
  console.log("in controller studentMarks");
  // Create a check if student has more than one pursuing
  let pursuing = StudentEnrollment.findAll({
    attributes: ["id"],
    where: {
      user_id: req.user.id,
      active: true,
    },
  });

  // //check if student has already selected last qualifying exam
  let last_qual_sem = StudentMarks.findAll({
    where: {
      student_enrollment_id: pursuing.id,
      last_qual_sem: true,
    },
  });

  if (pursuing.length) {
    res
      .status(200)
      .json(
        success(
          "A student cannot be enrolled in more than one degree program at a time!"
        )
      );
  }
  if (last_qual_sem.length) {
    res
      .status(200)
      .json(success("A student can only complete one semester at a time!"));
  } else {
    let instituteProgramme = await InstituteProgramme.findOne({
      attributes: ["id", "institute_id", "programme_id"],
      where: {
        institute_id: req.body.institute_id,
        programme_id: req.body.programme_id,
      },
    });

    const studentEnrollment = {
      user_id: req.user.id,
      institute_programme_id: instituteProgramme.id,
      subject_id: req.body.subject_id,
      academic_year_id: req.body.academic_year,
      current_semester_id: req.body.current_semester_id,
      current_class_id: req.body.current_class_id,
      other_institute_name: req.body.other_institute_name,
      other_programme_name: req.body.other_programme_name,
      other_subject_name: req.body.other_subject_name,
      consolidated_total_marks: req.body.consolidated_total_marks,
      consolidated_marks_obtained: req.body.consolidated_marks_obtained,
      consolidated_grade_obtained: req.body.consolidated_grade_obtained,
      board_university: req.body.board_university,
      month_year: req.body.month_year,
      userdoc_id: req.body.userdoc_id,
      is_active: req.body.pursuing,
    };
    await StudentEnrollment.update(studentEnrollment, {
      where: {
        user_id: req.user.id,
        id: req.body.student_enrollment_id,
      },
    })
      .then(async (data) => {
        if (req.body.pursuing) {
          const studentMarks = {
            student_enrollment_id: req.body.student_enrollment_id,
            semester_id: req.body.semester_id,
            eval_type_id: req.body.eval_type_id,
            total_marks: req.body.total_marks,
            marks_obtained: req.body.marks_obtained,
            grade_obtained: req.body.grade_obtained,
            last_qual_sem: req.body.last_qual_sem,
            month_year: req.body.month_year,
            userdoc_id: req.body.userdoc_id,
            active: req.body.active ? req.body.active : true,
            updateAt: null,
          };

          await StudentMarks.update(studentMarks, {
            where: {
              student_enrollment_id: req.body.student_enrollment_id,
            },
          }).then((data) => {
            res
              .status(200)
              .json(success("Student Marks updated successfully!", data));
          });
        }
      })
      .catch((err) => {
        res.status(400).json(errorResponse(err, 400));
      });
  }
};

// Delete a StudentMarks and corresponding enrollment with the specified id in the request
exports.delete = async (req, res) => {
  const id = req.body.id;

  await StudentMarks.destroy({
    where: { student_enrollment_id: req.body.student_enrollment_id },
  })
    .then(async (num) => {    
      
        res
          .status(200)
          .json(success("Student Marks were deleted successfully!"));
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(err + ` Cannot delete Student Marks with id=${id}`, 400)
        );
    });
};

// Delete a StudentMarks with the specified id in the request
exports.deleteOnlyMarks = async (req, res) => {
  const id = req.body.id;

  var studentMarks = await StudentMarks.findOne({
    where: {
      id: id,
    },
  });

  await StudentMarks.destroy({
    where: { id: id },
  }).then(async (num) => {
    res.status(200).json(success("Student Marks were deleted successfully!"));
  });
};

// Delete all StudentMarks from the database.
exports.deleteAll = (req, res) => {
  StudentMarks.destroy({
    where: {},
    truncate: false,
  })
    .then((nums) => {
      res
        .status(200)
        .json(success(nums + " Student Marks were deleted successfully!"));
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + ` Some error occurred while removing all StudentMarks`,
            400
          )
        );
    });
};

// Find all active StudentMarks
exports.findAllActive = (req, res) => {
  StudentMarks.findAll({ where: { is_active: true } })
    .then((data) => {
      res
        .status(200)
        .json(success("Student Marks fetched successfully!", data));
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + ` Some error occurred while retrieving StudentMarks`,
            400
          )
        );
    });
};

// Calculate percentage
exports.calculatePercentage = (req, res) => {
  let percentage = Math.ceil(
    (req.body.marks_obtained / req.body.total_marks) * 100
  );
  res.status(200).json(
    success("Student Percentage calculated successfully!", {
      percentage: percentage,
    })
  );
};

exports.deleteMarks = (req, res) => {};
