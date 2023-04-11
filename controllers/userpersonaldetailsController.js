const express = require('express');
const UserPersonalDetails = require('../models').UserPersonalDetails;
const UserRole = require('../models').UserRole;
const { success, errorResponse, validation } = require("../responseApi");

exports.getDepartmentAdminList=async function(req,res){
     const DepartmentAdminList=await sequelize.query();
       
}