const express = require("express");
const OrganisationType = require("../models").OrganisationType;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res) {
  console.log(req.body);
  OrganisationType.create({
    name: req.body.name,
  })
    .then((courses) => {
      res.status(200).json(success("Organisation Type created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await OrganisationType.findAll({
    where: {
      is_active: true,
    },
  })
    .then((courses) => {
      res
        .status(200)
        .json(success("Organisation Types fetched successfully!", courses));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};
