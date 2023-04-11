const express = require("express");
const EntityType = require("../models").EntityType;

const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res) {
  console.log(req.body);
  EntityType.create({
    name: req.body.name,
  })
    .then((entitytypes) => {
      res.status(200).json(success("Entity Type created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await EntityType.findAll({
    where: {
      is_active: true,
    },
  })
    .then((entitytypes) => {
      res
        .status(200)
        .json(success("Entity Types fetched successfully!", entitytypes));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};
