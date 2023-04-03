const jwt = require('jsonwebtoken');
require('dotenv').config();
const bcrypt = require('bcryptjs');

const User = require('../models').User;
const UserRole = require('../models').UserRole;
const Staff = require('../models').Staff;
const Role = require('../models').Role;
const UserPersonalDetails = require('../models').UserPersonalDetails;
const InstituteStaff = require('../models').InstituteStaff;
const StudentEnrollment = require('../models').StudentEnrollment;

const { success, errorResponse, validation } = require("../responseApi");

exports.register = function (req, res) {
    var salt = bcrypt.genSaltSync(10);
    var hash = bcrypt.hashSync(req.body.password, salt);

    Role.findOne({attributes: ['id', 'name']},{
        where: {
            id: req.body.role_id
        }
    })
    .then( (role) => {   
        console.log(role);
         User.create({
            username: req.body.username,
            password: hash,
            phone: req.body.phone,
            email: req.body.email,
        })
        .then( (user) => { 
            //save user id and college id in students and staff table
             UserRole.create({
                user_id: user.id,
                role_id: req.body.role_id,
                preferred_role: true,
            })             
            .then( (userRole)=>{
                UserPersonalDetails.create({
                    user_id: userRole.user_id,
                    firstname: req.body.firstname,
                    lastname: req.body.lastname,
                    phone: req.body.phone,
                    email: req.body.email,                    
                })
                
  .then( (userpersonaldetails) =>{
                    //check if student
                    if(req.body.role_id == 5){
                         StudentEnrollment.create({
                            user_id: user.id,
                            institute_programme_id: req.body.institute_programme_id,
                            current_class: req.body.class,                        
                        }).then( (studentEnrollment)=>{
                            res.status(200).json(success("Student-User created successfully"))    
                        }).catch((error)=> {
                            res.status(400).json(errorResponse("enrollment", 400));
                        })
                    }
                    //check if staff
                    else if(req.body.role_id == 6){
                         Staff.create({
                            user_id: user.id,
                        }).then( (staff) =>{
                            if(req.body.institute_type_id == null && req.body.institute_id == null){
                                res.status(400).json(errorResponse("Select valid Institute and programme!", 400));
                            }
                             InstituteStaff.create({
                                institute_id: req.body.institute_id,
                                staff_id: staff.id,
                                role_id: req.body.role_id,
                                institute_type_id: req.body.institute_type_id,    
                            }).then((instituteStaff)=> {
                                res.status(200).json(success("Staff-User created successfully"))  
                            }).catch((error)=>{
                                res.status(400).json(errorResponse(error, 400));
                            })
                        })                        
                    }                    
                }).catch((error)=> {
                    res.status(400).json(errorResponse("here", 400));
                })
            })
            .catch((error)=> {
                res.status(400).json(errorResponse(error, 400));
            })
        }).catch((error)=>{
            res.status(400).json(errorResponse(error, 400));
        });     
    })
    .catch((error)=> {
        res.status(400).json(errorResponse(error, 400));
    });
};

exports.login = function (req, res) {
    User
        .findOne({
            where: {
                username: req.body.username
            }
        })
        .then((user) => {
            tokendata = { 
                username: user.username,
                userId: user.id,
                userRole: user.role_id
            }
            if (!user) {
                res.status(400).json(errorResponse("User Not found! Please register first", 400));
            }
            const result = bcrypt.compareSync(req.body.password, user.password)
            
            if (result) {
                var token = jwt.sign(JSON.parse(JSON.stringify(tokendata)), process.env.JWT_SECRET, {
                    expiresIn: 86400 * 30
                });
                jwt.verify(token, process.env.JWT_SECRET, function (err, data) {
                    // console.log(err, data);
                })
                res.status(200).json(success("User logged in successfully!", token))
            } else {
                res.status(400).json(errorResponse("Please check your password", 400));
            }           
        })
        .catch((error) =>  res.status(400).json(errorResponse(error, 400)));
};