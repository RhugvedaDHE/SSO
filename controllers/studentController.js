const jwt = require("jsonwebtoken");
require("dotenv").config();
const bcrypt = require("bcryptjs");

const User = require("../models").User;
const UserRole = require("../models").UserRole;
//const UserContact = require("../models").UserContact;
//const Staff = require("../models").Staff;
//const Role = require("../models").Role;
const City = require("../models").City;
const State = require("../models").State;
//const Country = require("../models").Country;
const District = require("../models").District;
//const Company = require("../models").Company;
const UserPersonalDetails = require("../models").UserPersonalDetails;
//const InstituteStaff = require("../models").InstituteStaff;
const StudentEnrollment = require("../models").StudentEnrollment;
//const UserDesignation = require("../models").UserDesignation;
//const EntityUser = require("../models").EntityUser;
const InstituteProgramme = require("../models").InstituteProgramme;
const Institutes = require("../models").Institute;
const Programmes = require("../models").Programme;
const Stream = require("../models").Stream;
const studentGuardian = require("../models").StudentGuardian;
const studentMarks = require("../models").StudentMarks;
const studentResult = require("../models").StudentResult;
const studentRemarks = require("../models").StudentRemarks;
const UserQualification = require("../models").UserQualification;
const qualificationTypes = require("../models").QualificationTypes;
const evalTypes = require("../models").EvalTypes;
const subject = require("../models/").Subject;
const gender = require("../models/").Gender;
const bloodGroup = require("../models/").BloodGroup;
const country = require("../models/").Country;
const userContact = require("../models/").UserContact;


//const OTP = require("../models").OTP;
//const tokenList = {}

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
exports.getStudentList=async function(req,res){
    const data=await StudentEnrollment.findAll({
        attributes:['user_id', 'id','academic_year','institute_programme_id'],
        where:{
            is_active: true,
        }
    });
    if(data){
       
        var jsondata=[]
        for(const d of data){
             let userdetails = await UserPersonalDetails.findOne({
                attributes:['firstname','lastname'],
                where:{
                    user_id:d.user_id
                }
            });
           
            let instituteProgramme = await InstituteProgramme.findOne({
                attributes:['institute_id','programme_id'],
                where:{
                    id:d.institute_programme_id
                }
            })
           
            let institute=await Institutes.findOne({
                    attributes:['name'],
                    where:{
                        id:instituteProgramme.institute_id
                }
            });

            let program=await Programmes.findOne({
                attributes:['name'],
                where:{
                    id:instituteProgramme.programme_id
            }
        });
                
           jsondata.push({"user_id":d.user_id,"student_enrollemnt_id":d.id, "academic_year":d.academic_year,"firstname":userdetails.firstname,"lastname":userdetails.lastname,"institute_id":instituteProgramme.institute_id,"institute_name":institute.name,"program_id":instituteProgramme.programme_id,"program_name":program.name})
           
        }
        return  res.status(200).json(success("Students fetched successfully!", jsondata))
    }else{
        return res.status(400).json(errorResponse(error, 400));
    }
   
}

//Function to get list of all institute's students: paresh     
//We need to get list of all the students whoes profile is complete hence adding profile_status field
//param :id which is institute ID
exports.getInstituteStudentList=async function(req,res){
    const instituteId = req.params.id;
    //const programId = req.params.ProgramId;

    const instituteProgrammeResult = await InstituteProgramme.findAll({
        attributes:['id','institute_id','programme_id'],
        where:{
            institute_id:instituteId
        }
    })

    if(instituteProgrammeResult){
        var jsondata=[]
        var cnt = 0;

        for(const eachrow of instituteProgrammeResult){
            cnt++;

            let studentEnrollmentRow = await StudentEnrollment.findOne({
                attributes:['user_id', 'id','academic_year','institute_programme_id'],
                where:{
                    institute_programme_id:eachrow.id
                }
            });

            
            if(studentEnrollmentRow){

              let userdetails = await UserPersonalDetails.findOne({
                    attributes:['firstname','lastname'],
                    where:{
                        user_id:studentEnrollmentRow.user_id
                    }
              });

              // console.log(userdetails);

              let institute=await Institutes.findOne({
                  attributes:['name'],
                  where:{
                      id:eachrow.institute_id
                  }
              });

              let program=await Programmes.findOne({
                  attributes:['name','stream_id'],
                  where:{
                      id:eachrow.programme_id
                  }
              });

              let streamRow=await Stream.findOne({
                attributes:['id','name'],
                where:{
                    id:program.stream_id
                }
              });

              jsondata.push({
                "srno":cnt,  
                "user_id":studentEnrollmentRow.user_id,
                "student_enrollemnt_id":studentEnrollmentRow.id,
                "academic_year":studentEnrollmentRow.academic_year,
                "firstname":userdetails.firstname,
                "lastname":userdetails.lastname,
                "institute_id":eachrow.institute_id,
                "institute_name":institute.name,
                "stream_id":streamRow.id,
                "stream_name":streamRow.name,
                "program_id":eachrow.programme_id,
                "program_name":program.name
              });
              
            }
                        
           
        }
        return  res.status(200).json(success("Students fetched successfully!", jsondata));
    }
    else{
        return res.status(400).json(errorResponse(error, 400));
    }
   
}

//Function to get student details: Paresh
//Param:id = user's ID
exports.getStudentDetails = async function(req,res){
    const userId = req.params.id;;
    console.log(req.params.id);

    //One student will have only one active enrollment flag is_active:1 :Paresh
    const studentEntrollmentData = await StudentEnrollment.findOne({
        attributes:['user_id', 'id', 'subject_id','academic_year','institute_programme_id'],
        where:{
            is_active: true,
            user_id: userId,
        }
    });

    if(studentEntrollmentData){   
        var jsondata=[]
       // for(const d of data){
             let userdetails = await UserPersonalDetails.findOne({
                attributes:['firstname','lastname','gender','email', 'phone', 'dob','aadhar','blood_group','nationality','physically_disabled', 'createdAt'],
                where:{
                    user_id:studentEntrollmentData.user_id
                }
            });

           // console.log(userdetails);
           
            let instituteProgramme = await InstituteProgramme.findOne({
                attributes:['institute_id','programme_id'],
                where:{
                    id:studentEntrollmentData.institute_programme_id
                }
            })
           
            let institute=await Institutes.findOne({
                attributes:['name'],
                where:{
                    id:instituteProgramme.institute_id
                }
            });

            let program=await Programmes.findOne({
                attributes:['name'],
                where:{
                    id:instituteProgramme.programme_id
                }
            });

            //Get student's guardians--------------------------------------
            let studentGuardianResult = await studentGuardian.findAll({
              where:{
                    is_active:true,
                    student_enrollment_id:studentEntrollmentData.id
                }
            });
          
            var guardianData = [];
            for(const d of studentGuardianResult){
              guardianData.push({
                "guardian_type_id":d.guardian_type_id, 
                "firstname":d.first_name, 
                "lastname":d.last_name, 
                "phone":d.phone, 
                "email":d.email, 
                "aadhar_card_no":d.aadhar_card_no, 
                "designation":d.designation, 
                "occupation":d.occupation, 
                "work_address":d.work_address, 
                "annual_income":d.annual_income, 
                "created_at":d.createdAt, 
              });
            }
            //END student guardians------------------------------------------

            //Get student's Marks--------------------------------------
            let studentMarksResult = await studentMarks.findAll({
            where:{
                  active:true,
                  student_enrollment_id:studentEntrollmentData.id
              }
            });
          
            var marksData = [];
            for(const m of studentMarksResult){

              
              let evalTypeDetails = await evalTypes.findOne({
                where:{
                      id:m.eval_type_id
                  }
              });

              marksData.push({
                "program_semester_id":m.program_semester_id, 
                "institute_programme_course_subject_id":m.institute_programme_course_subject_id, 
                "eval_type_id":m.eval_type_id, 
                "eval_type_name":evalTypeDetails.name, 
                "total_marks":m.total_marks,
                "marks_obtained":m.marks_obtained, 
                "grade_obtained":m.grade_obtained, 
                "designation":m.designation, 
                "occupation":m.occupation, 
                "work_address":m.work_address, 
                "annual_income":m.annual_income, 
                "created_at":m.createdAt, 
              });
            }
            //END student Marks------------------------------------------

            //Get student's Result --------------------------------------
            let studentResultRows = await studentResult.findAll({
              where:{
                    active:true,
                    student_enrollment_id:studentEntrollmentData.id
                }
              });
            
              var resultData = [];
              for(const r of studentResultRows){
                resultData.push({
                  "institute_program_id":r.institute_program_id, 
                  "institute_programme_course_subject_id":r.institute_programme_course_subject_id, 
                  "eval_type_id":r.eval_type_id, 
                  "total_marks":r.total_marks, 
                  "marks_obtained":r.marks_obtained, 
                  "grade_obtained":m.grade_obtained, 
                  "created_at":m.createdAt, 
                });
              }
            //END student Result------------------------------------------

            //qualification are past qualification details
            let userQualifications = await UserQualification.findAll({
              where:{
                    user_id:userId
                }
              });

              var qualificationData = [];
              for(const q of userQualifications){

                let qualificationTypeDetails = await qualificationTypes.findOne({
                  where:{
                        id:q.qualification_type_id
                    }
                });

                qualificationData.push({
                  "id":q.id, 
                  "qualification_type_id":q.qualification_type_id, 
                  "qualification_type_title":qualificationTypeDetails.title, 
                  "year":q.eval_type_id,
                });
              }
                
            //student academic details---------------------------------------
            var academic;
            let subjectDetails = await subject.findOne({
              where:{
                    id:studentEntrollmentData.subject_id
                }
            });
            academic= {
              "student_enrollemnt_id":studentEntrollmentData.id, 
              "academic_year":studentEntrollmentData.academic_year,
              "institute_id":instituteProgramme.institute_id,
              "institute_name":institute.name,
              "program_id":instituteProgramme.programme_id,
              "program_name":program.name,
              "subject":subjectDetails.name,
              "board_univ":instituteProgramme.board_univ,
              "qualification":qualificationData
            };
            //END student academic details-----------------------------------

            //Get student's Remarks --------------------------------------
             let studentRemarksResult = await studentRemarks.findAll({
                where:{
                      student_enrollment_id:studentEntrollmentData.id
                  }
                });
              
                var remarksData = [];
                for(const rm of studentRemarksResult){
                    
                    //take owner details and add to array below

                    remarksData.push({
                        "id":rm.id, 
                        "program_semester_id":rm.program_semester_id, 
                        "section":rm.section, 
                        "remarks":rm.remarks, 
                        "owner_id":rm.owner_id, 
                        "owner_type_id":rm.owner_type_id
                    });
                }
            //END student Marks------------------------------------------

            //get gender, blood group and nationality
            let genderDetails = await gender.findOne({
              where:{
                    id:userdetails.gender
                }
            });

            let bloodDetails = await bloodGroup.findOne({
              where:{
                    id:userdetails.blood_group
                }
            });

            let countryDetails = await country.findOne({
              where:{
                    id:userdetails.nationality
                }
            });

            //Get user contact details --------------------------------------
            let usercontactResult = await userContact.findAll({
              where:{
                    is_active:true,
                    user_id:userId
                }
            });
          
            var contactData = [];
            for(const c of usercontactResult){
              
              //find contact country
              let contactCountryDetails = await country.findOne({
                where:{
                      id:c.country_id
                  }
              });

              let contactStateDetails = await State.findOne({
                where:{
                      id:c.state_id
                  }
              });

              let contactDistrictDetails = await District.findOne({
                where:{
                      id:c.district_id
                  }
              });

              //city as taluka login by rhug-veda
              let cityAsTalukaDetails = await City.findOne({
                where:{
                      id:c.taluka_id
                  }
              });

              City

              contactData.push({
                "type": c.type,
                "address": c.address,
                "country_id": c.country_id,
                "country_title": contactCountryDetails.name,
                "state_id": c.state_id,
                "state_title": contactStateDetails.name,
                "district_id": c.district_id,
                "district_title": contactDistrictDetails.name,
                "taluka_id": c.taluka_id,
                "taluka_title": cityAsTalukaDetails.name,
                "village": c.village,
                "pincode": c.pincode,
                "created_at":c.createdAt,
              });
            }
            //END user contact ------------------------------------------

            jsondata.push({
              "user_id":studentEntrollmentData.user_id,
              "firstname":userdetails.firstname,
              "lastname":userdetails.lastname,
              "gender":userdetails.gender,
              "gender_title":genderDetails.name,
              "email":userdetails.email,
              "phone":userdetails.phone,
              "dob":userdetails.dob,
              "aadhar":userdetails.aadhar,
              "blood_group":userdetails.blood_group,
              "blood_group_title":bloodDetails.name,
              "nationality":userdetails.nationality,
              "nationality_title":countryDetails.name,
              "physically_disabled":userdetails.physically_disabled,
              "createdAt":userdetails.createdAt,
              "academic":academic,
              "guardian":guardianData,
              "marks":marksData,
              "result":resultData,
              "remarks":remarksData,
              "contact_data":contactData,
            });

                 
           
       // }
        return  res.status(200).json(success("Students fetched successfully!", jsondata))
    }else{
        return res.status(400).json(errorResponse("Student not found!", 400));
    }
   
}



// Update a Company by the id in the request
exports.verifyStudent = (req, res) => {
    const id = req.params.id;   
    
    if(req.body.is_verified){
      const updatefields = {
        is_verified: req.body.is_verified,
        status: "verified"
      };
    }
    else{
      const updatefields = {
        is_verified: req.body.is_verified,
        status: "Incomplete"
      };
    }    

    User.update(updatefields, {
      where: { id: id }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Student was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Student with id=${id}. Maybe Student was not found`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Company with id=" + id
        });
      });
  };
