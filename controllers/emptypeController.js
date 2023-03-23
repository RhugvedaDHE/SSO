const express = require('express');
const EmploymentType = require('../models').EmploymentType;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res){
    console.log(req.body);
    EmploymentType.create({
        name:req.body.name,
    }).then(employmenttypes => {
        res.status(200).json(success("EmploymentType created successfully!"))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.get = async function (req, res){
    await EmploymentType.findAll({
        where: {
            is_active: true,
        }
    }).then(employmenttypes => {
        res.status(200).json(success("Countries fetched successfully!", employmenttypes))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}