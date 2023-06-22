const express = require('express');
const Config = require('../models').Config;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res){
    console.log(req.body);
    Config.create({
        name: ((req.body.name).toLowerCase()).replace(/ /g,"_"),
        value: (req.body.value),
    }).then(config => {
        res.status(200).json(success("Config created successfully!"))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.get = async function (req, res){
  console.log("hey there", req.body)
  await Config
    .findAll({
      where: {
        name: req.body.name,
        is_active: true,
      },
    })
    .then((config) => {
      res
        .status(200)
        .json(success("Config fetched successfully!", config));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
}