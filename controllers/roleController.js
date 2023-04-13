const express = require("express");
const Role = require("../models").Role;
const UserRole = require("../models").UserRole;
const { success, errorResponse, validation } = require("../responseApi");

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
  await Role.findAll({
    where: {
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

exports.getUserRole = function (req, res) {
  UserRole.findOne({
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