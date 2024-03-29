const express = require("express");
const Role = require("../models").Role;
const UserRole = require("../models").UserRole;
const { success, errorResponse, validation } = require("../responseApi");
const { Op } = require("sequelize");

exports.create = function (req, res) {
  console.log(req.body);
  Role.create({
    name: req.body.name,
  })
    .then((countries) => {
      res.status(200).json(success("Role created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  let where = {
    type: {
      [Op.in]: req.body.type
    }, 
    is_admin: req.body.admin,   
    is_active: true,
  };
  // if(req.body.admin){
  //   where.push({is_admin: req.body.admin});
  // }
  console.log(where);
  
  if(req.body.type.includes("register-institute") && req.body.type.length == 1){
    where = {
      display: true,
      type: "institute",
      is_active: true,
      is_admin: req.body.admin
    };
  }  
  else if(req.body.type.includes("register-company") && req.body.type.length == 1){
    where = {
      display: true,
      type: "company",
      is_active: true,
      is_admin: req.body.admin
    };
  }  
  await Role.findAll({
      where: where,
      is_active: true,
    })
      .then((roles) => {
        res.status(200).json(success("Roles fetched successfully!", roles));
      })
      .catch((error) => {
        res.status(400).json(errorResponse(error, 400));
      });
  
};

exports.getRegister = async function (req, res) {
  console.log(req.body.type);
  await Role.findAll({
    where: {
      type: req.body.type,
      is_active: true,
    },
  })
    .then((roles) => {
      res.status(200).json(success("Roles fetched successfully!", roles));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.getAll= async function (req, res) {
  await Role.findAll({
  })
    .then((roles) => {
      res.status(200).json(success("Roles fetched successfully!", roles));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.getAllAdmins= async function (req, res) {
  await Role.findAll({
    where: {
      is_admin: true,
    }
  })
    .then((roles) => {
      res.status(200).json(success("Admin Roles fetched successfully!", roles));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.getUserRole = function (req, res) {
  UserRole.findAll({
    attributes:["id"],
    where: {
      user_id: req.user.id,       
    },include: [
      {
        model: Role,
        attributes:["name"],        
      },
    ],
  }).then((userRole)=>{
    res
    .status(200)
    .json(success("User Role fetched successfully", userRole));
  }).catch((error)=>{
    res.status(400).json(errorResponse(error, 400));
  })
};

//Count Institute Admin
exports.getInstituteAdmin=async function(req,res){
  const count = await Project.findAndCountAll({
      where: {
          role_id:8
        } 
    }).then(instAdmin => {
      res.status(200).json(success("Institute Admin fetched successfully!", instAdmin))
  }).catch(error => {
      res.status(400).json(errorResponse(error, 400));
  })
};

//Count University Admin
exports.getUniversityAdmin=async function(req,res){
  const count = await Project.findAndCountAll({
      where: {
          role_id:9
        } 
    }).then(uniAdmin => {
      res.status(200).json(success("University Admin fetched successfully!", uniAdmin))
  }).catch(error => {
      res.status(400).json(errorResponse(error, 400));
  })
};

//Count Department Admin
exports.getDepartmentAdmin=async function(req,res){
  const count = await Project.findAndCountAll({
      where: {
          role_id:10
        } 
    }).then(deptAdmin => {
      res.status(200).json(success("Department Admin fetched successfully!", deptAdmin))
  }).catch(error => {
      res.status(400).json(errorResponse(error, 400));
  })
};

//Assign roles to user
exports.assignRole=async function(req,res){
  const count = await UserRole.create({
      user_id: req.body.user_id,
      role_id: req.body.role_id,
    }).then(userrole => {
      res.status(200).json(success("Role assigned to the user successfully!"))
  }).catch(error => {
      res.status(400).json(errorResponse(error, 400));
  })
};