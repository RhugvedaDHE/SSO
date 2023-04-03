const express = require('express');
const Department = require('../models').Department;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res){
    console.log(req.body);
    Department.create({
        name:req.body.name,
    }).then(departments => {
        res.status(200).json(success("Department created successfully!"))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.get = async function (req, res){
    await Department.findAll({
        where: {
            is_active: true,
        }
    }).then(departments => {
        res.status(200).json(success("Departments fetched successfully!", departments))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}