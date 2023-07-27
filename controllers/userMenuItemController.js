const express = require("express");
const MenuItem = require("../models").MenuItem;
const Role = require("../models").Role;
const UserMenuItem = require("../models").UserMenuItem;
const { success, errorResponse, validation } = require("../responseApi");
const { Op } = require("sequelize");

exports.create = function (req, res) {
  UserMenuItem.create({
    menuitem_id: req.body.menuitem_id,
    role_id: req.body.role_id,
  })
    .then((usermenuitem) => {
      res.status(200).json(success("User Menu Item created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.getAll = async function (req, res) {
  
  await UserMenuItem.findAll({
      is_active: true,
      include: [
        {
          model: Role,
          attributes: ["id", "name"]
        },
        {
          model: MenuItem,
          attributes: ["id", "name", "url"]
        },
      ],
    })
      .then((usermenuitems) => {
        res.status(200).json(success("User Menu Items fetched successfully!", usermenuitems));
      })
      .catch((error) => {
        res.status(400).json(errorResponse(error, 400));
      });
  
};

//token based 
exports.get = async function (req, res) {
  
  await UserMenuItem.findAll({
      is_active: true,
      include: [
        {
          model: Role,
          attributes: ["id", "name"]
        },
        {
          model: MenuItem,
          attributes: ["id", "name", "url"]
        },
      ],
      where: {
        role_id: req.user.role_id
      }
    })
      .then((usermenuitems) => {
        res.status(200).json(success("User specific Menu Items fetched successfully!", usermenuitems));
      })
      .catch((error) => {
        res.status(400).json(errorResponse(error, 400));
      });
  
};