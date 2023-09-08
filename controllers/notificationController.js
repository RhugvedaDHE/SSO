const express = require("express");
const OTP = require("../models").OTP;
const User = require("../models").User;
const UserRole = require("../models").UserRole;
const Notification = require("../models").Notification; //1066
const db = require("../models");
const Op = db.Sequelize.Op;
const {
  success,
  errorResponse,
  validation,
  EmailNotification,
  SMSNotification,
} = require("../responseApi");
const bcrypt = require("bcryptjs");
require("dotenv").config();

exports.createNotification = async (from, to, subject, message) => {
  try {   

    await Notification.create({
      from_userrole: from,
      to_userrole: to,
      subject: subject,
      message: message,
    })
      .then((notification) => {
        return true;
        // res.status(200).json(success(subject + " Notification added successfully!"));
      })
      .catch((error) => {
        return false;
        // res.status(400).send("Error creating Notification!");
      });
  } catch (error) {
    console.log("noti cont", error);
  }
};

exports.get = async function (req, res) {
  let userRole = await UserRole.findOne({
    where: {
      user_id: req.user.id,
      role_id: req.user.role_id,
    },
  });
  console.log("ur:", userRole.id);
  await Notification.findAll({
    where: {
      is_read: false,
      to_userrole: userRole.id,
    },
  })
    .then(async (unreadNotifications) => {

      await Notification.findAll({
        where: {
          is_read: true,
          to_userrole: userRole.id,
        },
      }).then(async (readNotifications) => {

        let jsondata = [];
        jsondata.push({
          unreadCount: unreadNotifications.length,
          unreadNotifications: unreadNotifications,
          readCount: readNotifications.length,
          readNotifications: readNotifications,
        })
        res
          .status(200)
          .json(success("Notifications fetched successfully!", jsondata));
    })
  })
    .catch((error) => {
      res.status(400).send("Error fetching Notifications!");
    });
};

exports.markAsRead = async function (req, res) {
  await Notification.update(
    {
      is_read: true,
    },
    {
      where: {
        id: req.body.id,
      },
    }
  )
    .then((notifications) => {
      res
        .status(200)
        .json(success("Notifications marked as read successfully!", notifications));
    })
    .catch((error) => {
      res.status(400).send("Error fetching Notifications!");
    });
};
