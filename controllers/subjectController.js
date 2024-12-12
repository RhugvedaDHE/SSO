const express = require("express");
const Subject = require("../models").Subject;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res) {
  console.log(req.body);
  Subject.create({
    name: req.body.name,
  })
    .then((subjects) => {
      res.status(200).json(success("Subject created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.createBulk = async function (req, res) {
  console.log(req.body);

  for (const item of req.body) {
    await Subject.create({
      id: item.id,
      name: item.name,
    });
  }
  
  res.status(200).json(success("Subjects created successfully!"));
  
};

exports.get = async function (req, res) {
  console.log("fdsbghdrbghghghgs");
  await Subject.findAll({
    where: {
      is_active: true,
    },
  })
    .then((subjects) => {
      res.status(200).json(success("Subjects fetched successfully!", subjects));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.update = async function (req, res) {
  console.log("fdsbghdrbghghghgs");
  await Subject.update({
    name: req.body.name,
  },{
    where: {
      id: req.body.subject_id,
    },
  })
    .then((subjects) => {
      res.status(200).json(success("Subjects updated successfully!", subjects));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.delete = async function (req, res) {
  console.log("fdsbghdrbghghghgs");
  await Subject.destroy({
    where: {
      id: req.body.subject_id,
    },
  })
    .then((subjects) => {
      res.status(200).json(success("Subjects deleted successfully!", subjects));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};
