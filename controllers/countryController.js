const express = require('express');
const country = require('../models').Country;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res){
    console.log(req.body);
    country.create({
        name:req.body.name,
        nationality:req.body.nationality,
    }).then(countries => {
        res.status(200).json(success("Country created successfully!"))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.get = async function (req, res){
  await country
    .findAll({
      where: {
        is_active: true,
      },
    })
    .then((countries) => {
      res
        .status(200)
        .json(success("Countries fetched successfully!", countries));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
}