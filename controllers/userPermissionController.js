const express = require("express");
const Permission = require("../models").Permission;
const Role = require("../models").Role;
const UserPermission = require("../models").UserPermission;
const { success, errorResponse, validation } = require("../responseApi");
const { Op } = require("sequelize");

exports.create = function (req, res) {
  UserPermission.create({
    permission_id: req.body.permission_id,
    role_id: req.body.role_id,
  })
    .then((permission) => {
      res.status(200).json(success("User Permission created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  
  await UserPermission.findAll({
      is_active: true,
      include: [
        {
          model: Role,
          attributes: ["id", "name"]
        },
        {
          model: Permission,
          attributes: ["id", "name"]
        },
      ],
    })
      .then((permissions) => {
        res.status(200).json(success("User Permissions fetched successfully!", permissions));
      })
      .catch((error) => {
        res.status(400).json(errorResponse(error, 400));
      });
  
};