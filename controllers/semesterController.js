const express = require("express");
const Semester = require("../models").Semester;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res) {
  Semester.create({
    name: req.body.name,
  })
    .then((semesters) => {
      res.status(200).json(success("Semester created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await Semester.findAll({
    where: {
      is_active: true,
    },
  })
    .then((semesters) => {
      res
        .status(200)
        .json(success("Semesters fetched successfully!", semesters));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};
