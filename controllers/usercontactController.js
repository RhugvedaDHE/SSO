const express = require("express");
const UserContact = require("../models").UserContact;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = async function (req, res) {
  const userContact = {
    user_id: req.user.id,
    type: req.body.type_id,
    address: req.body.address,
    country_id: req.body.country_id,
    state_id: req.body.state_id,
    district_id: req.body.district_id,
    taluka_id: req.body.taluka_id,
    village: req.body.village,
    pincode: req.body.pincode,
  };

  let userContactData = UserContact.findOne({
    where: {
      user_id: req.user.id,
      type: req.body.type_id,
    },
  });
  if (userContactData.length) {
    await UserContact.update(userContact, {
      where: {
        user_id: req.user.id,
        type: req.body.type_id,
      },
    })
      .then((data) => {
        res
          .status(200)
          .json(success("User-Contact updated successfully!", data));
      })

      .catch((err) => {
        res.status(400).json(errorResponse(err, 400));
      });
  } else {
    await UserContact.create(userContact)
      .then((data) => {
        res
          .status(200)
          .json(success("User-Contact created successfully!", data));
      })

      .catch((err) => {
        res.status(400).json(errorResponse(err, 400));
      });
  }
};
