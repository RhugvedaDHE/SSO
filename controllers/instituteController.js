const express = require('express');
const Sequelize = require('sequelize');

const InstituteType = require('../models').InstituteType;
const City = require('../models').City;
const State = require('../models').State;
const District = require('../models').District;
const Country = require('../models').Country;
const Institute = require('../models').Institute;
const InstituteFaculty = require('../models').InstituteFaculty;
const Faculty = require('../models').Faculty;
const UserPersonalDetails = require('../models').UserPersonalDetails;
const User = require('../models').User;
const UserRole = require('../models').UserRole;

const { success, errorResponse, validation } = require("../responseApi");


exports.create = function (req, res) {
  Institute.create({
    institute_type_id: req.body.institute_type_id,
    code: req.body.code,
    name: req.body.name,
    type: req.body.type,
    address: req.body.address,
    city_id: req.body.city_id,
    state_id: req.body.state_id,
    district_id: req.body.district_id,
    village: req.body.village,
    country_id: req.body.country_id,
    pincode: req.body.pincode,
    hoi_id: req.body.hoi_id,
    contact_person_name: req.body.contact_person_name,
    contact_person_email: req.body.contact_person_email,
  })
    .then((institutes) => {
      res.status(200).json(success("Institute created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await Institute.findAll({
    where: {
      is_active: true,
    },
    include: [
      {
        model: InstituteType,
        attributes: ["name", "is_active"],
      },
      {
        model: City,
        attributes: ["name", "is_active"],
      },
      {
        model: District,
        attributes: ["name", "is_active"],
      },
      {
        model: Country,
        attributes: ["name", "is_active"],
      },
      {
        model: State,
        attributes: ["name", "is_active"],
      },
    ],
  })
    .then((institutes) => {
      res
        .status(200)
        .json(success("Institutes fetched successfully!", institutes));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.gettype = async function (req, res) {
  await Institute.findAll({
    where: {
      is_active: true,
      institute_type_id: req.body.institute_type_id,
    },
    include: [
      {
        model: InstituteType,
        attributes: ["name", "is_active"],
      },
      {
        model: City,
        attributes: ["name", "is_active"],
      },
      {
        model: District,
        attributes: ["name", "is_active"],
      },
      {
        model: Country,
        attributes: ["name", "is_active"],
      },
      {
        model: State,
        attributes: ["name", "is_active"],
      },
    ],
  })
    .then((institutes) => {
      res
        .status(200)
        .json(success("Institutes fetched successfully!", institutes));
    })
    .catch((error) => {
      console.log(error);
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.getusers = async function (req, res) {
  InstituteFaculty.findAll({
    where: {
      institute_id: req.body.institute_id,
      is_active: true,
    },
    include: [
      {
        model: Faculty,
        attributes: ["user_id", "is_active"],
        include: {
          model: User,
          attributes: ["id", "is_active"],
        },
      },
    ],
  })
    .then((institutesFaculties) => {
      const users = {};
      institutesFaculties.forEach((user) => {
        UserPersonalDetails.findAll({
          where: {
            user_id: user.Faculty.user_id,
            is_active: true,
          },
        }).then((users) => {
          users.push(users);
        });
      });
      res
        .status(200)
        .json(success("Institute-Users fetched successfully!", users));
    })
    .catch((error) => {
      console.log(error);
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.getUniversityAdmins=async function(req,res){
  const data=await UserRole.findAll({
      attributes:['user_id'],
      where:{
          role_id:8
      }
  });
  if(data){
      
      var jsondata=[]
      for(const d of data){
           let userdetails= await UserPersonalDetails.findOne({
              attributes:['firstname','lastname'],
              where:{
                  user_id:d.user_id
              }
          });
          
          let EUser=await EntityUser.findOne({
              attributes:['cio_id'],
              where:{
                  user_id:d.user_id
              }
          })
          
          let Institutename=await Institute.findOne({
                  attributes:['name'],
                  where:{
                      id:EUser.cio_id
              }
              });
         jsondata.push({"firstname":userdetails.firstname,"lastname":userdetails.lastname,"Department_Name":Institutename.name})
         
      }
      return  res.status(200).json(success("University Admins fetched successfully!", jsondata))
  }else{
      return res.status(400).json(errorResponse(error, 400));
  }
 
}