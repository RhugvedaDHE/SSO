const express = require('express');
const Course = require('../models').Course;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res){
    console.log(req.body);
    Course.create({
        name:req.body.name,
        credit:req.body.credit,
        course_code:req.body.course_code,
    }).then(courses => {
        res.status(200).json(success("Course created successfully!"))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.get = async function (req, res){
    await Course.findAll({
        where: {
            is_active: true,
        }
    }).then(courses => {
        res.status(200).json(success("Courses fetched successfully!", courses))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}