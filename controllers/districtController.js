const express = require("express");
const State = require("../models").State;
const District = require("../models").District;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res) {
  District.create({
    name: req.body.name,
    state_id: req.body.state_id,
  })
    .then((districts) => {
      res.status(200).json(success("District created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await District.findAll({
    where: {
      is_active: true,
      state_id: req.body.state_id,
    },
    include: [
      {
        model: State,
        attributes: ["name", "is_active"],
      },
    ],
  })
    .then((districts) => {
      res
        .status(200)
        .json(success("Districts fetched successfully!", districts));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};
