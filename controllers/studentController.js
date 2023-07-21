const jwt = require("jsonwebtoken");
require("dotenv").config();
const bcrypt = require("bcryptjs");
const db = require("../models");

const User = require("../models").User;
const UserDocs = require("../models").UserDocs;
const DocumentType = require("../models").DocumentType;
const religion = require("../models").religion;
const Country = require("../models").Country;
const City = require("../models").City;
const State = require("../models").State;
const District = require("../models").District;
const UserPersonalDetails = require("../models").UserPersonalDetails;
const StudentEnrollment = require("../models").StudentEnrollment;
const InstituteProgramme = require("../models").InstituteProgramme;
const Institutes = require("../models").Institute;
const Programmes = require("../models").Programme;
const CasteCategory = require("../models").CasteCategory;
const studentGuardian = require("../models").StudentGuardian;
const studentMarks = require("../models").StudentMarks;
const studentResult = require("../models").StudentResult;
const studentRemarks = require("../models").StudentRemarks;
const StudentSkills = require("../models").StudentSkills;
const Skill = require("../models").Skill;
const UserQualification = require("../models").UserQualification;
const qualificationTypes = require("../models").QualificationTypes;
const evalTypes = require("../models").EvalTypes;
const subject = require("../models/").Subject;
const gender = require("../models/").Gender;
const bloodGroup = require("../models/").BloodGroup;
const country = require("../models/").Country;
const userContact = require("../models/").UserContact;
const data = require("../config/statuses.json");

const Sequelize = require("sequelize");
const Op = Sequelize.Op;
const {
  success,
  errorResponse,
  validation,
  userCredentials,
  EmailNotification,
} = require("../responseApi");

//function to get list of al the students, this function will be not used currently:Paresh
exports.getStudentList = async function (req, res) {
  const data = await StudentEnrollment.findAll({
    attributes: ["user_id", "id", "academic_year", "institute_programme_id", "current_semester"],
    where: {
      is_active: true,
    },
    limit: 15,
    offset: req.params.offset,
  });
  if (data) {
    var jsondata = [];
    for (const d of data) {
      let userdetails = await UserPersonalDetails.findOne({
        attributes: ["firstname", "lastname", "email", "phone"],
        where: {
          user_id: d.user_id,
        },
      });

      let userdocs = await UserDocs.findOne({
        attributes: ["filename"],
        where: {
          user_id: d.user_id,
        },
        include: [{
          model: DocumentType,
          where:{
            name: "Application Picture"
          }
          }
        ]
      });

      let instituteProgramme = await InstituteProgramme.findOne({
        attributes: ["institute_id", "programme_id"],
        where: {
          id: d.institute_programme_id,
        },
      });

      let institute = await Institutes.findOne({
        attributes: ["name"],
        where: {
          id: instituteProgramme.institute_id,
        },
      });

      let program = await Programmes.findOne({
        attributes: ["name"],
        where: {
          id: instituteProgramme.programme_id,
        },
      });

      jsondata.push({
        user_id: d.user_id,
        student_enrollemnt_id: d.id,
        academic_year: d.academic_year,
        current_semester: d.current_semester,
        firstname: userdetails.firstname,
        lastname: userdetails.lastname,
        email: userdetails.email,
        phone: userdetails.phone,
        picture: userdocs ? req.protocol + "://" + req.get("host") + "/static/user/" + userdocs.filename : null,
        institute_id: instituteProgramme.institute_id,
        institute_name: institute.name,
        program_id: instituteProgramme.programme_id,
        program_name: program.name,
      });
    }
    return res
      .status(200)
      .json(success("Students fetched successfully!", jsondata));
  } else {
    return res.status(400).json(errorResponse(error, 400));
  }
};

//Function to get list of all institute's students: paresh
//We need to get list of all the students whoes profile is complete hence adding profile_status field
//param :id which is institute ID
exports.getInstituteStudentList = async function (req, res) {
  const instituteId = req.params.id;

  var query = `SELECT DISTINCT(s.user_id),up.*,s.*, users.is_verified, users.status, users.is_signed, s.id as student_enrollment_id, s.subject_id, subjects.id as sid, subjects.name as subject_name FROM public."StudentEnrollments" as s`;
  query+= ` INNER JOIN public."InstituteProgrammes" as ip ON ip.id = s."institute_programme_id"`;
  query+= ` INNER JOIN public."Institutes" as i ON i.id = ip.institute_id`;
  query+= ` INNER JOIN public."UserPersonalDetails" as up ON up.user_id = s.user_id`;
  query+= ` INNER JOIN public."Users" as users ON up.user_id = users.id`;
  query+= ` LEFT JOIN public."Subjects" as subjects ON s.subject_id = subjects.id`;
  query+= ` WHERE i."id" = ${instituteId} AND users.is_signed=true AND users.status='SUB' AND users.is_verified=false`;
  query+= ` ORDER BY s."id" ASC`;

  const jsondata = await db.sequelize.query(query, {
    type: db.Sequelize.QueryTypes.SELECT,
  });

  return res
    .status(200)
    .json(success("Students fetched successfully!", jsondata));
};

//Function to get list of all institute's students: paresh
//We need to get list of all the students whoes profile is complete hence adding profile_status field
//param :id which is institute ID
exports.getVerifiedInstituteStudentList = async function (req, res) {
  const instituteId = req.params.id;

  var query = ` SELECT DISTINCT(s.user_id),up.*,s.*, users.is_verified, users.status, users.is_signed FROM public."StudentEnrollments" as s s.subject_id, subjects.id as sid, subjects.name as subject_name INNER JOIN public."InstituteProgrammes" as ip ON ip.id = s.institute_programme_id
  INNER JOIN public."Institutes" as i ON i.id = ip.institute_id
  INNER JOIN public."UserPersonalDetails" as up ON up.user_id = s.user_id
  INNER JOIN public."Users" as users ON up.user_id = users.id
  LEFT JOIN public."Subjects" as subjects ON s.subject_id = subjects.id
  WHERE i."id" = ${instituteId} AND users.is_signed=true AND users.status='VER' AND users.is_verified=true
  ORDER BY s."id" ASC`;

  const jsondata = await db.sequelize.query(query, {
    type: db.Sequelize.QueryTypes.SELECT,
  });

  return res
    .status(200)
    .json(success("Students fetched successfully!", jsondata));
};

//Function to get student details: Paresh
//Param:id = user's ID
exports.getStudentDetails = async function (req, res) {
  const userId = req.params.id;
  console.log(req.params.id);

  //One student will have only one active enrollment flag is_active:1 :Paresh
  const studentEntrollmentData = await StudentEnrollment.findOne({
    attributes: [
      "user_id",
      "id",
      "subject_id",
      "academic_year",
      "institute_programme_id",
    ],
    where: {
      is_active: true,
      user_id: userId,
    },
  });

  if (studentEntrollmentData) {
    var jsondata = [];
    // for(const d of data){
    let is_signed = await User.findOne({
      attributes: ["is_signed"],
      where: {
        id: userId,
      },
    });

    let userdetails = await UserPersonalDetails.findOne({
      attributes: [
        "firstname",
        "lastname",
        "gender",
        "email",
        "phone",
        "dob",
        "aadhar",
        "blood_group",
        "nationality",
        "physically_disabled",
        "castcategory_id",
        "religion_id",
        "createdAt",       
      ],
      where: {
        user_id: studentEntrollmentData.user_id,
      },     
      include: [
        {
          model: CasteCategory,
        },
        {
          model: religion,
        },
      ],
    });

    console.log("heyyyyyyyyyyyyyyyyyyyyyyyy", userdetails);
    let instituteProgramme = await InstituteProgramme.findOne({
      attributes: ["institute_id", "programme_id"],
      where: {
        id: studentEntrollmentData.institute_programme_id,
      },
    });

    let institute = await Institutes.findOne({
      attributes: ["name"],
      where: {
        id: instituteProgramme.institute_id,
      },
    });

    let program = await Programmes.findOne({
      attributes: ["name"],
      where: {
        id: instituteProgramme.programme_id,
      },
    });

    //Get student's guardians--------------------------------------
    let studentGuardianResult = await studentGuardian.findAll({
      where: {
        is_active: true,
        student_enrollment_id: studentEntrollmentData.id,
      },
    });
    if (studentGuardianResult) {
      var guardianData = [];
      for (const d of studentGuardianResult) {
        guardianData.push({
          guardian_type_id: d.guardian_type_id,
          firstname: d.first_name,
          lastname: d.last_name,
          phone: d.phone,
          email: d.email,
          aadhar_card_no: d.aadhar_card_no,
          designation: d.designation,
          occupation: d.occupation,
          work_address: d.work_address,
          annual_income: d.annual_income,
          created_at: d.createdAt,
        });
      }
    }
    //END student guardians------------------------------------------

    //Get student's Marks--------------------------------------
    let studentMarksResult = await studentMarks.findAll({
      where: {
        active: true,
        student_enrollment_id: studentEntrollmentData.id,
      },
    });

    if (studentMarksResult) {
      var marksData = [];
      for (const m of studentMarksResult) {
        let evalTypeDetails = await evalTypes.findOne({
          where: {
            id: m.eval_type_id,
          },
        });

        marksData.push({
          program_semester_id: m.program_semester_id,
          institute_programme_course_subject_id:
           m.institute_programme_course_subject_id,
          eval_type_id: m.eval_type_id,
          eval_type_name: evalTypeDetails.name,
          total_marks: m.total_marks,
          marks_obtained: m.marks_obtained,
          grade_obtained: m.grade_obtained,
          designation: m.designation,
          occupation: m.occupation,
          work_address: m.work_address,
          annual_income: m.annual_income,
          created_at: m.createdAt,
        });
      }
    }
    //END student Marks------------------------------------------

    //Get student's Result --------------------------------------
    let studentResultRows = await studentResult.findAll({
      where: {
        active: true,
        student_enrollment_id: studentEntrollmentData.id,
      },
    });

    if (studentResultRows) {
      var resultData = [];
      for (const r of studentResultRows) {
        resultData.push({
          institute_program_id: r.institute_program_id,
          institute_programme_course_subject_id:
           r.institute_programme_course_subject_id,
          eval_type_id: r.eval_type_id,
          total_marks: r.total_marks,
          marks_obtained: r.marks_obtained,
          grade_obtained: m.grade_obtained,
          created_at: m.createdAt,
        });
      }
    }
    //END student Result------------------------------------------

    //qualification are past qualification details
    let userQualifications = await UserQualification.findAll({
      where: {
        user_id: userId,
      },
    });
    if (userQualifications) {
      var qualificationData = [];
      for (const q of userQualifications) {
        let qualificationTypeDetails = await qualificationTypes.findOne({
          where: {
            id: q.qualification_type_id,
          },
        });

        qualificationData.push({
          id: q.id,
          qualification_type_id: q.qualification_type_id,
          qualification_type_title: qualificationTypeDetails.title,
          year: q.eval_type_id,
        });
      }
    }

    //student academic details---------------------------------------
    var academic;
    let subjectDetails = {};
    if (studentEntrollmentData.subject_id) {
      subjectDetails = await subject.findOne({
        where: {
          id: studentEntrollmentData.subject_id,
        },
      });
    } else {
      subjectDetails.name = "";
    }
    academic = {
      student_enrollemnt_id: studentEntrollmentData.id,
      academic_year: studentEntrollmentData.academic_year,
      institute_id: instituteProgramme.institute_id,
      institute_name: institute.name,
      program_id: instituteProgramme.programme_id,
      program_name: program.name,
      subject_id: subjectDetails.id,
      subject_name: subjectDetails.name,
      board_univ: instituteProgramme.board_univ,
      qualification: qualificationData,
    };
    //END student academic details-----------------------------------

    //Get student's Remarks --------------------------------------
    let studentRemarksResult = await studentRemarks.findAll({
      where: {
        student_enrollment_id: studentEntrollmentData.id,
      },
    });

    if (studentRemarksResult) {
      var remarksData = [];
      for (const rm of studentRemarksResult) {
        //take owner details and add to array below

        remarksData.push({
          id: rm.id,
          program_semester_id: rm.program_semester_id,
          section: rm.section,
          remarks: rm.remarks,
          owner_id: rm.owner_id,
          owner_type_id: rm.owner_type_id,
        });
      }
    }
    //END student Marks------------------------------------------

    let contactCountryDetails =
      (contactStateDetails =
      contactDistrictDetails =
      cityAsTalukaDetails =
        {});
    let genderDetails = {};
    let bloodDetails = {};
    let countryDetails = {};
    let usercontactResult = {};
    //get gender, blood group and nationality
    genderDetails = await gender.findOne({
      where: {
        id: userdetails.gender,
      },
    });

    bloodDetails = await bloodGroup.findOne({
      where: {
        id: userdetails.blood_group,
      },
    });

    countryDetails = await country.findOne({
      where: {
        id: userdetails.nationality,
      },
    });

    //Get user contact details --------------------------------------
    usercontactResult = await userContact.findAll({
      where: {
        is_active: true,
        user_id: userId,
      },
    });

    var contactData = [];

    for (const c of usercontactResult) {
      //find contact country
      if (c.country_id) {
        contactCountryDetails = await Country.findOne({
          where: {
            id: c.country_id,
          },
        });
      }

      if (c.state_id) {
        contactStateDetails = await State.findOne({
          where: {
            id: c.state_id,
          },
        });
      }

      if (c.district_id) {
        contactDistrictDetails = await District.findOne({
          where: {
            id: c.district_id,
          },
        });
      }

      if (c.taluka_id) {
        //city as taluka login by rhug-veda
        cityAsTalukaDetails = await City.findOne({
          where: {
            id: c.taluka_id,
          },
        });
      }
      if (genderDetails === null) {
        genderDetails = {
          name: "",
        };
      }
      if (bloodDetails === null) {
        bloodDetails = {
          name: "",
        };
      }
      if (countryDetails === null) {
        countryDetails = {
          name: "",
        };
      }
      if (contactCountryDetails === null) {
        contactCountryDetails.push({
          name: "",
        });
      }
      if (contactStateDetails === null) {
        contactStateDetails.name = "";
      }
      if (contactDistrictDetails === null) {
        contactDistrictDetails.name = "";
      }
      if (cityAsTalukaDetails === null) {
        cityAsTalukaDetails.name = "";
      }

      contactData.push({
        type: c.type,
        address: c.address,
        country_id: c.country_id,
        country_title: contactCountryDetails.name,
        state_id: c.state_id,
        state_title: contactStateDetails.name,
        district_id: c.district_id,
        district_title: contactDistrictDetails.name,
        taluka_id: c.taluka_id,
        taluka_title: cityAsTalukaDetails.name,
        village: c.village,
        pincode: c.pincode,
        created_at: c.createdAt,
      });
    }
    //END user contact ------------------------------------------

    //get skills
    let skillsData = await StudentSkills.findAll({
      where: {
        user_id: userId,
      },
      include: [
        {
          model: Skill,
        },
      ],
    });

    jsondata.push({
      user_id: studentEntrollmentData.user_id,
      enrollment_id: studentEntrollmentData.id,
      firstname: userdetails.firstname,
      lastname: userdetails.lastname,
      gender: userdetails.gender,
      gender_title: genderDetails ? genderDetails.name : null,
      castcategory: userdetails.castcategory_id,
      castcategory_title: userdetails.CasteCategory ? userdetails.CasteCategory.name : null,
      religion: userdetails.religion_id,
      religion_title: userdetails.religion ? userdetails.religion.name : null,
      email: userdetails.email,
      phone: userdetails.phone,
      dob: userdetails.dob ? userdetails.dob.toLocaleDateString('en-ZA').replaceAll("/", "-") : null,
      aadhar: userdetails.aadhar,
      blood_group: userdetails.blood_group,
      blood_group_title: bloodDetails ? bloodDetails.name : null,
      nationality: userdetails.nationality,
      nationality_title: countryDetails ? countryDetails.name : null,
      physically_disabled: userdetails.physically_disabled ? 1 : 0,
      physically_disabled_title: userdetails.physically_disabled,
      is_signed: is_signed.is_signed,
      createdAt: userdetails.createdAt,
      academic: academic,
      guardian: guardianData,
      marks: marksData,
      result: resultData,
      remarks: remarksData,
      contact_data: contactData,
      skills_data: skillsData,
    });

    // }
    return res
      .status(200)
      .json(success("Students fetched successfully!", jsondata));
  } else {
    return res.status(400).json(errorResponse("Student not found!", 400));
  }
};

// verfify/rejected or student profile mark incomplete
exports.verifyStudent = (req, res) => {
  const id = req.user.id;
  let is_verified = false;
  let status = "";

  if (JSON.stringify(data).includes(req.body.is_verified)) {
    for (key in data.statuses) {
      if (req.body.is_verified == key) {
        status = data.statuses[key];
      }
    }
  }

  req.body.is_verified == "verified"
    ? (is_verified = true)
    : (is_verified = false);

  const updatefields = {
    is_verified: is_verified,
    status: status,
  };

  User.update(updatefields, {
    where: { id: id },
  })
    .then((num) => {
      if (num == 1) {
        return res
          .status(200)
          .json(success("Students status updated successfully!"));
      } else {
        return res
          .status(400)
          .json(
            errorResponse(
              `Cannot update Student with id=${id}. Maybe Student was not found`,
              400
            )
          );
      }
    })
    .catch((err) => {
      return res
        .status(400)
        .json(
          errorResponse(
            `Cannot update Student with id=${id}. Maybe Server error`,
            400
          )
        );
    });
};


exports.listOfStudents = async (req, res) =>{

  await StudentEnrollment.findAll({
      where: {
        is_active: true,
      },
      limit: 5,
      offset: req.body.offset,
    
}).then(function (result) {
  return res
  .status(200)
  .json(success("Students list retrived successfully!", result));
});

}