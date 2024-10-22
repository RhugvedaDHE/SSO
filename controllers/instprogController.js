const express = require("express");
const InstituteProgramme = require("../models").InstituteProgramme;
const Institute = require("../models").Institute;
const Programme = require("../models").Programme;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res) {
  console.log(req.body);
  InstituteProgramme.create({
    institute_id: req.body.institute_id,
    programme_id: req.body.programme_id,
  })
    .then((instituteprogrammes) => {
      res
        .status(200)
        .json(success("Institute-Programme created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.createBulk = async function (req, res) {
  console.log(req.body);

  for (const item of req.body) {
        
  await InstituteProgramme.create({
    institute_id: item.institutes,
    programme_id: item.programmes,
  })

}
    // .then((instituteprogrammes) => {
      res
        .status(200)
        .json(success("Institute-Programme created successfully!"));
    // })
    // .catch((error) => {
    //   res.status(400).json(errorResponse(error, 400));
    // });
};

exports.get = async function (req, res) {
  await InstituteProgramme.findAll({
    where: {
      is_active: true,
    },
  })
    .then((instituteprogrammes) => {
      res
        .status(200)
        .json(
          success(
            "Institute-Programmes fetched successfully!",
            instituteprogrammes
          )
        );
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};
