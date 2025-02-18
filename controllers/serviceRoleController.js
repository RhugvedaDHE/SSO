const express = require("express");
const ServiceRole = require("../models").ServiceRole;
const Role = require("../models").Role;
const User = require("../models").User;
const Service = require("../models").Service;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res) {
  ServiceRole.create({
    service_id: req.body.service_id,
    role_id: req.body.role_id,
  })
    .then((serviceroles) => {
      res
        .status(200)
        .json(success("ServiceRole mapping created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  // check if user is verified

  let user = await User.findOne({
    where: {
      id: req.user.id,
      // is_verified: true,
    },
  });
  if (user) {
    let services = [];
    console.log(req.user);
    let serviceroles = await ServiceRole.findAll({
      attributes: ["service_id"],
      where: {
        role_id: req.user.role_id,
        is_active: true,
      },
    });

    for (const serviceRole of serviceroles) {
      let service1 = await Service.findOne({
        where: {
          id: serviceRole.service_id,
          is_active: true,
        },
      });
      if (service1) {
        services.push({
          id: service1.id,
          name: service1.name,
          url: service1.url,
          image_url:
            req.protocol +
            "://" +
            req.get("host") +
            "/static/service/" +
            service1.image_url,
        });
      }
    }
    res
      .status(200)
      .json(
        success(
          "Services for the logged in user fetched successfully!",
          services
        )
      );
  } else {
    res
      .status(400)
      .json(
        errorResponse(
          "Unauthorised! Please make sure that your profile is verified!",
          400
        )
      );
  }
};
