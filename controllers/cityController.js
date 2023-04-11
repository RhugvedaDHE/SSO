const express = require("express");
const District = require("../models").District;
const City = require("../models").City;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res) {
  City.create({
    name: req.body.name,
    district_id: req.body.district_id,
  })
    .then((cities) => {
      res.status(200).json(success("City created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await City.findAll({
    where: {
      is_active: true,
      district_id: req.body.district_id,
    },
    include: [
      {
        model: District,
        attributes: ["name", "is_active"],
      },
    ],
  })
    .then((cities) => {
      res.status(200).json(success("Cities fetched successfully!", cities));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};
