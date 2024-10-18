const express = require("express");
const State = require("../models").State;
const Boarduniversity = require("../models").Boarduniversity;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res) {
  Boarduniversity.create({
    name: req.body.name,
    state_id: req.body.state_id,
  })
    .then((districts) => {
      res.status(200).json(success("Board/University created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await Boarduniversity.findAll({
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
    .then((boarduniversities) => {
      if(boarduniversities.length){
        res
        .status(200)
        .json(success("board universities fetched successfully!", boarduniversities));
      }
      res
        .status(404)
        .json(success("No board universities found!", boarduniversities));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};
