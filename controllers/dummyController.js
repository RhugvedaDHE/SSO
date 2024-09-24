const express = require("express");
const Dummy = require("../models").Dummy;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res) {
  Dummy.create({
    name: req.body.name,
  })
    .then((dummies) => {
      res.status(200).json(success("Dummy created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await Dummy.findAll({
    where: {
      is_active: true,
    },
  })
    .then((dummies) => {
      res.status(200).json(success("Dummies fetched successfully!", dummies));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.put = async function (req, res) {
  await Dummy.findAll({
    where: {
      id: req.body.id,
      is_active: true
    }
  })
}