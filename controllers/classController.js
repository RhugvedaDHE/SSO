const express = require("express");
const InstituteType = require("../models").InstituteType;
const Class = require("../models").Class;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res) {
  Class.create({
    name: req.body.name,
    institute_type_id: req.body.institute_type_id,
  })
    .then((classes) => {
      res.status(200).json(success("Class created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await Class.findAll({
    where: {
      is_active: true,
    },
    include: [
      {
        model: InstituteType,
        attributes: ["name", "is_active"],
      },
    ],
  })
    .then((classes) => {
      res.status(200).json(success("Classes fetched successfully!", classes));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};
