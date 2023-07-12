const express = require("express");
const Duration = require("../models").Duration;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res) {
  console.log(req.body);
  Duration.create({
    name: req.body.name,
    is_active: true
  })
    .then((duration) => {
      res.status(200).json(success("Duration created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await Duration.findAll({
    where: {
      is_active: true,
    }
  })
    .then((programmes) => {
      res
        .status(200)
        .json(success("Durations fetched successfully!", programmes));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};