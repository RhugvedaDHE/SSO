const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const Religion = require('../models').religion;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res){
  console.log(req.body);
  Religion.create({
      name:req.body.name,
  }).then(religions => {
      res.status(200).json(success("Religion created successfully!"))
  }).catch(error => {
      res.status(400).json(errorResponse(error, 400));
  })
}

exports.get = async function (req, res){
await Religion
  .findAll({
    where: {
      is_active: true,
    },
  })
  .then((religions) => {
    res
      .status(200)
      .json(success("Religions fetched successfully!", religions));
  })
  .catch((error) => {
    res.status(400).json(errorResponse(error, 400));
  });
}