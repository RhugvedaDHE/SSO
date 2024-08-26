const express = require('express');
const AcademicYear = require('../models').AcademicYear;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res){
    console.log(req.body);
    AcademicYear.create({
        value: (req.body.value),
        is_active: (req.body.current),
    }).then(AcademicYear => {
        res.status(200).json(success("Academic Year created successfully!"))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.get = async function (req, res){
  await AcademicYear
    .findAll({
      where: {
        is_active: true,
      },
    })
    .then((AcademicYear) => {
      res
        .status(200)
        .json(success("Academic Year fetched successfully!", AcademicYear));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
}