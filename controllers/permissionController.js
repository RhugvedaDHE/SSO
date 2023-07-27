const express = require("express");
const Permission = require("../models").Permission;
const UserPermission = require("../models").UserPermission;
const { success, errorResponse, validation } = require("../responseApi");
const { Op } = require("sequelize");

exports.create = function (req, res) {
  Permission.create({
    name: req.body.name,
  })
    .then((permission) => {
      res.status(200).json(success("Permission created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  
  await Permission.findAll({
      is_active: true,
    })
      .then((permissions) => {
        res.status(200).json(success("Permissions fetched successfully!", permissions));
      })
      .catch((error) => {
        res.status(400).json(errorResponse(error, 400));
      });
  
};