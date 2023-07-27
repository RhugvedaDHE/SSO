const express = require("express");
const MenuItem = require("../models").MenuItem;
const UserMenuItem = require("../models").UserMenuItem;
const { success, errorResponse, validation } = require("../responseApi");
const { Op } = require("sequelize");

exports.create = function (req, res) {
  MenuItem.create({
    name: req.body.name,
    url: req.body.url,
  })
    .then((menuitem) => {
      res.status(200).json(success("Menu Item created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  
  await MenuItem.findAll({
      is_active: true,
    })
      .then((menuitems) => {
        res.status(200).json(success("Menu Items fetched successfully!", menuitems));
      })
      .catch((error) => {
        res.status(400).json(errorResponse(error, 400));
      });
  
};