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
const Semester = require("../models").Semester;
const DocumentType = require("../models").DocumentType;
const EvalTypes = require("../models").EvalTypes;
const { success, errorResponse, validation } = require("../responseApi");
const e = require("express");

//const db = require("../models");

//const StudentMarks = db.studentMarks;
const Op = require("sequelize").Op;

// Create and Save a new StudentMarks
exports.create = async (req, res) => {
  console.log("in controller studentMarks");
  // Create a check if student has more than one pursuing
  let pursuing = StudentEnrollment.findAll({
    attributes: ["id"],
    where: {
      user_id: req.user.id,
      is_active: 1,
    },
  });
  let last_qual_year = {};
  let count_last_qual_year = 0;
  // if (pursuing.length <= 1) {
  // //check if student has already selected last qualifying exam
  // count_last_qual_year = StudentMarks.findAll({
  //   where: {
  //     student_enrollment_id: pursuing.id,
  //     last_qual_year: true,
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
    academic_year: req.body.academic_year,
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
        if (req.body.pursuing != 0 && req.body.hasmarks) {
          const studentMarks = {
            student_enrollment_id: data.id,
            semester_id: req.body.semester_id,
            eval_type_id: req.body.eval_type_id,
            total_marks: req.body.total_marks,
            marks_obtained: req.body.marks_obtained,
            grade_obtained: req.body.grade_obtained,
            last_qual_year: req.body.last_qual_year,
            month_year: req.body.month_year,
            userdoc_id: req.body.userdoc_id,
            active: req.body.active ? req.body.active : true,
            updateAt: null,
          };

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
        res
          .status(200)
          .json(
            success(
              "nlebbvb Student-Enrollment+Marks created successfully!",
              dataEnroll
            )
          );
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
        if (Number(req.body.pursuing) != 0 && Boolean(req.body.hasmarks)) {
          const studentMarks = {
            student_enrollment_id: data.id,
            semester_id: req.body.semester_id,
            eval_type_id: req.body.eval_type_id,
            total_marks: req.body.total_marks,
            marks_obtained: req.body.marks_obtained,
            grade_obtained: req.body.grade_obtained,
            last_qual_year: req.body.last_qual_year,
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
        } else if (dataEnroll) {
          res
            .status(200)
            .json(success("Student-Enrollment created successfully!"));
        }
      })
      .catch((err) => {
        res.status(400).json(errorResponse(err, 400));
      });
  }

  // }
};

// Create and Save a new StudentMarks
exports.createEnrollment = async (req, res) => {
  console.log("in controller studentMarks");

  let instituteProgramme = await InstituteProgramme.findOne({
    attributes: ["id", "institute_id", "programme_id"],
    where: {
      institute_id: req.body.institute_id,
      programme_id: req.body.programme_id,
    },
  });

  const studentEnrollment = {
    user_id: req.user.id,
    qual_type_id: req.body.qual_type_id,
    institute_programme_id: instituteProgramme.id,
    subject_id: req.body.subject_id,
    academic_year: req.body.academic_year,
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

  if (req.body.enrollment_id) {
    await StudentEnrollment.update(studentEnrollment, {
      where: {
        id: req.body.enrollment_id,
      },
    })
      .then(async (dataEnroll) => {
        res
          .status(200)
          .json(success("Student-Enrollment updated successfully!"));
      })
      .catch((err) => {
        res.status(400).json(errorResponse(err, 400));
      });
  } else {
    //create a new one
    await StudentEnrollment.create(studentEnrollment)
      .then(async (dataEnroll) => {
        res
          .status(200)
          .json(
            success("Student-Enrollment created successfully!", dataEnroll)
          );
      })
      .catch((err) => {
        res.status(400).json(errorResponse(err, 400));
      });
  }
};

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
    last_qual_year: req.body.last_qual_year,
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
  // const studentEnrollmentId = req.params.id;
  let userId = req.user.id;

  let studentEnrollments = await StudentEnrollment.findAll({
    where: {
      user_id: req.user.id,
    },
    include: [
      {
        model: Subject,
        attributes: ["name"],
      },
      {
        model: Class,
        attributes: ["name"],
      },

      {
        model: Semester,
        attributes: ["name"],
      },
    ],
  });

  if (studentEnrollments) {
    let finalData = [];
    let userdocMark;
    let filePathMark = (filePathEnrollment = null);
    for (const studentEnrollment of studentEnrollments) {
      let programmeDetails = await InstituteProgramme.findOne({
        where: {
          id: studentEnrollment.institute_programme_id,
        },
        include: [
          {
            model: Programme,
            attributes: ["name"],
          },
          {
            model: Institute,
            attributes: ["name"],
          },
        ],
      });

      const studentMark = await StudentMarks.findOne({
        where: {
          active: true,
          student_enrollment_id: studentEnrollment.id,
        },
      });

      let userdocEnrollment = await UserDocs.findOne({
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
      if (studentMark) {
        userdocMark = await UserDocs.findOne({
          where: {
            // user_id: req.user.id,
            id: studentMark.userdoc_id,
          },
          include: [
            {
              model: DocumentType,
              attributes: ["name"],
            },
          ],
        });

        filePathMark = userdocMark
          ? req.protocol +
            "://" +
            req.get("host") +
            "/static/user/" +
            userdocMark.filename
          : null;
      }

      filePathEnrollment = userdocEnrollment
        ? req.protocol +
          "://" +
          req.get("host") +
          "/static/user/" +
          userdocEnrollment.filename
        : null;

      finalData.push({
        // id: d.id,

        program_id: programmeDetails.Programme.id,
        program_title: programmeDetails.Programme.name,
        board_university: studentEnrollment.board_university,
        institute_name: programmeDetails.Institute.name,
        academic_year: studentEnrollment.board_university,
        current_semester_id: studentEnrollment.Semester.name,
        current_class_id: studentEnrollment.Class.name,
        other_institute_name: studentEnrollment.other_institute_name,
        other_programme_name: studentEnrollment.other_programme_name,
        other_subject_name: studentEnrollment.other_subject_name,
        consolidated_total_marks: studentEnrollment.consolidated_total_marks,
        consolidated_marks_obtained:
          studentEnrollment.consolidated_marks_obtained,
        consolidated_grade_obtained:
          studentEnrollment.consolidated_marks_obtained,
        board_university: studentEnrollment.board_university,
        month_year: studentEnrollment.month_year,
        userdoc_id: studentEnrollment.userdoc_id,
        userdoc_id: studentEnrollment.userdoc_id,
        is_active: studentEnrollment.is_active,
        userDoc_type: studentMark
          ? userdocMark.DocumentType.name
          : userdocEnrollment.DocumentType.name,
        userDoc: studentMark ? filePathMark : filePathEnrollment,
      });
    } //end for

    if (finalData) {
      res
        .status(200)
        .json(success("Student Marks fetched successfully!", finalData));
    } else {
      res.status(400).json(errorResponse(`Cannot find Student's Marks`, 400));
    }
  }
};

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
  let last_qual_year = StudentMarks.findAll({
    where: {
      student_enrollment_id: pursuing.id,
      last_qual_year: true,
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
  if (last_qual_year.length) {
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
      academic_year: req.body.academic_year,
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
            last_qual_year: req.body.last_qual_year,
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

// Delete a StudentMarks with the specified id in the request
exports.delete = (req, res) => {
  const id = req.body.id;

  StudentMarks.destroy({
    where: { id: id },
  })
    .then((num) => {
      if (num == 1) {
        res
          .status(200)
          .json(success("Student Marks were deleted successfully!"));
      } else {
        res
          .status(400)
          .json(
            errorResponse(
              ` Cannot delete StudentMarks with id=${id}. Maybe Student Marks were not found!`,
              400
            )
          );
      }
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(err + ` Cannot delete Student Marks with id=${id}`, 400)
        );
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
