const express = require('express');
const Bank = require('../models').Bank;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res){
    console.log(req.body);
    Bank.create({
        user_id:req.user.id,
        name:req.body.name,
        branch:req.body.branch,
        account_number:req.body.account_number,
        ifsc_code:req.body.ifsc_code,
    }).then(bank => {
        res.status(200).json(success("Bank details uploaded successfully!"))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.update = function (req, res){
  console.log(req.body);
  Bank.update({
      user_id:req.user.id,
      name:req.body.name,
      branch:req.body.branch,
      account_number:req.body.name,
      ifsc_code:req.body.ifsc_code,
  }, {
    where: { 
      user_id: req.user.id,
      is_active: true
    }}).then(bank => {
      res.status(200).json(success("Bank details uploaded successfully!"))
  }).catch(error => {
      res.status(400).json(errorResponse(error, 400));
  })
}

exports.get = async function (req, res){
  await Bank
    .findAll({
      where: {
        user_id: req.user.id,
        is_active: true,
      },
    })
    .then((bank) => {
      res
        .status(200)
        .json(success("Bank details fetched successfully!", bank));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
}