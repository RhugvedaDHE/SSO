const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const userDocs = require('../models').UserDocs;
const docType = require('../models').DocumentType;
const { success, errorResponse, validation } = require("../responseApi");


const env = process.env.NODE_ENV || 'development';

let PORT = process.env.PORT;
const uploadUrl = 'http://192.168.1.184:3000/static';

// Creating express object
//const app = express();
const path = require("path");
const url = require("url");
const fs = require('fs');


const Op = require('sequelize').Op;

// Create and Save a new UserDocs
exports.create = async (req, res) => {
  console.log("in controller userDocs - upload document");
  const userId = req.body.user_id;
  const docTypeId = req.body.doc_type_id;

  var storage = multer.diskStorage({

		destination:function(request, file, callback)
		{
			callback(null, './uploads/user/'+userId);
		},
		filename : function(request, file, callback)
		{
			var temp_file_arr = file.originalname.split(".");

			var temp_file_name = temp_file_arr[0];

			var temp_file_extension = temp_file_arr[1];

			callback(null, 'cert_'+req.body.company_id+ '_' + Date.now() + '.' + temp_file_extension);
		}

	});
  
  const maxSize = 307200;//30kb
	var upload = multer({
                        storage:storage,
                        fileFilter: function (req, file, callback) {
                          var ext = path.extname(file.originalname);
                          /*if(ext !== '.png' && ext !== '.jpg' && ext !== '.gif' && ext !== '.jpeg') {
                              return callback(new Error('Only images are allowed'))
                          }
                          callback(null, true);*/

                          if (file.mimetype === 'application/pdf') { // check file type to be png, jpeg, or jpg
                            callback(null, true);
                          } else {
                            callback(null, false); // else fails
                          }
                        },
                        limits:{fileSize:maxSize}
                      }).single('certificate');

	  upload(req, res, function(error){

		if(error)
		{
			res.send('Error Uploading File: '+error);
		}
		else
		{
        //request.flash('success', request.file.filename);
        const companyData = {
          reg_certificate: req.file.filename,
        };
      
        Company.update(companyData, {
          where: { id: req.body.company_id }
        })
          .then(num => {
            if (num == 1) {
              res.send({
                message: "User document updated successfully."
              });
            } else {
              res.send({
                message: `Cannot update user with id=${req.body.company_id}. Maybe user was not found or req.body is empty!`
              });
            }
          });

			//response.redirect("/fileupload");

			//res.send('File is uploaded successfully '+req.file.filename);
		}

	})

    if (!req.body.student_enrollment_id) {
      res.status(400).json(errorResponse("Student enrollment ID cannot be empty!", 400));
      return;
    }
  
    // Create a UserDocs
   
    const userDocsData = {
      student_enrollment_id: req.body.student_enrollment_id,
      program_semester_id: req.body.program_semester_id,
      institute_programme_course_subject_id: req.body.institute_programme_course_subject_id,
      eval_type_id: req.body.eval_type_id,
      total_marks: req.body.total_marks,
      marks_obtained: req.body.marks_obtained,
      grade_obtained: req.body.grade_obtained,
      active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save UserDocs in the database
    userDocs.create(userDocsData)
      .then(data => {
        res.status(200).json(success("Student Documents created successfully!", data));
      })
      .catch(err => {
        res.status(400).json(errorResponse(err, 400));
    });
};

// Retrieve all UserDocs from the database.
exports.findAll = async (req, res) => {
  console.log(req.params.id);

  const userId = req.params.id;
  var condition = userId ? { user_id: { [Op.eq]: userId } } : null;

  const data =  await userDocs.findAll({ where: condition });

    if(data){
     
      var docsData = [];
        for(const rm of data){
            
            //take document type details and add to array below
            let docTypeData = await docType.findOne({
                where:{
                      id:rm.doc_type_id
                  }
                });

            const filePath = uploadUrl+"/user/"+userId+"/"+rm.filename;
            
            docsData.push({
                "id":rm.id, 
                "doc_type_id":rm.doc_type_id, 
                "doc_type_name":docTypeData.name, 
                "filename":rm.filename, 
                "filepath":filePath, 
               
            });
        }
        

        if (docsData) {
            res.status(200).json(success("User documents fetched successfully!", docsData));
        } else {
            res.status(400).json(errorResponse(`Cannot find Student's Documents`, 400));
        }
    }
    
    
};

//this API is not in use: paresh
exports.showImage = (req, res) => {
 
  const userId = req.body.user_id;
  const filename = req.body.filename;
  
	// Path Refinements
	const filePath = uploadUrl+"/user/"+userId+"/"+filename;//path.join(__dirname,		action).split("%20").join(" ");

	// Checking if the path exists
  const request = url.parse(filePath, true);
 
  // Extracting the path of file
  const action = request.pathname
		// Extracting file extension
		const ext = path.extname(action);
    

		// Setting default Content-Type
		const contentType = "text/plain";

		// Checking if the extension of
		// image is '.png'
		if (ext === ".png") {
			contentType = "image/png";
		}

		// Setting the headers
		res.writeHead(200, {
			"Content-Type": contentType
		});

		// Reading the file
		//fs.readFile(filePath,
		//	function (err, contentType) {
				// Serving the image
			//	console.log(content);
		//	});
  

      fs.readFile("uploads/user/"+userId+"/"+filename, 'utf8', function(err, data){
        console.log(filePath);
        console.log(err);
       // console.log(data);
       res.end(data);
    });
};


// Find a single UserDocs with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  userDocs.findByPk(id)
    .then(data => {
      if (data) {
        res.status(200).json(success("Student Documents fetched successfully!", data));
      } else {
        res.status(400).json(errorResponse(`Cannot find Student Documents with id=${id}.`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Error retrieving Student Documents with id=" + id, 400));
    });
};

// Update a UserDocs by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  const userDocsData = {
    student_enrollment_id: req.body.student_enrollment_id,
    program_semester_id: req.body.program_semester_id,
    institute_programme_course_subject_id: req.body.institute_programme_course_subject_id,
    eval_type_id: req.body.eval_type_id,
    total_marks: req.body.total_marks,
    marks_obtained: req.body.marks_obtained,
    grade_obtained: req.body.grade_obtained,
    active: req.body.active
  };

  userDocs.update(userDocsData, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Student Documents was updated successfully!"));
      } else {
        res.status(400).json(errorResponse(` Cannot update Student Documents with id=${id}. Maybe Student Documents was not found or req.body is empty!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Error updating Student Documents with id=" + id, 400));
    });
};

// Delete a UserDocs with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  userDocs.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Student Documents was deleted successfully!"));
      } else {
        res.status(400).json(errorResponse(` Cannot delete UserDocs with id=${id}. Maybe Student Documents was not found!`, 400));
      }
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+` Cannot delete Student Documents with id=${id}`, 400));
    });
};

// Delete all UserDocs from the database.
exports.deleteAll = (req, res) => {
    userDocs.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.status(200).json(success(nums+" Student Documents was deleted successfully!"));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+` Some error occurred while removing all UserDocs`, 400));
     
    });
};


