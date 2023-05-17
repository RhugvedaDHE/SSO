const express = require("express");
const District = require("../models").District;
const EvalTypes = require("../models").EvalTypes;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res) {
  EvalTypes.create({
    name: req.body.name,
  })
    .then((evaltypes) => {
      res.status(200).json(success("Evaluation Type created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await EvalTypes.findAll({
    // where: {
    //   is_active: true,
    // },
  })
    .then((evalTypes) => {
      res.status(200).json(success("Evaluation Types fetched successfully!", cities));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};
