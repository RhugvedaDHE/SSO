const express = require("express");
const Designation = require("../models").Designation;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res) {
  console.log(req.body);
  Designation.create({
    name: req.body.name,
  })
    .then((designation) => {
      res.status(200).json(success("Designation created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await Designation.findAll({
    where: {
      is_active: true,
    },
  })
    .then((designations) => {
      res
        .status(200)
        .json(success("Designation fetched successfully!", designations));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};
