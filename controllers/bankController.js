const express = require("express");
const UserBank = require("../models").UserBank;
const { success, errorResponse, validation } = require("../responseApi");
var ifsc = require("ifsc");

exports.create = function (req, res) {
  console.log(req.body);
  UserBank.create({
    user_id: req.user.id,
    name: req.body.name,
    branch: req.body.branch,
    account_number: req.body.account_number,
    ifsc_code: req.body.ifsc_code,
    bank_address: req.body.bank_address,
  })
    .then((bank) => {
      res.status(200).json(success("Bank details uploaded successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.update = function (req, res) {
  console.log(req.body);
  UserBank.update(
    {
      user_id: req.user.id,
      name: req.body.name,
      branch: req.body.branch,
      account_number: req.body.name,
      ifsc_code: req.body.ifsc_code,
      bank_address: req.body.bank_address,
    },
    {
      where: {
        user_id: req.user.id,
        is_active: true,
      },
    }
  )
    .then((bank) => {
      res.status(200).json(success("Bank details uploaded successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await UserBank.findAll({
    where: {
      user_id: req.user.id,
      is_active: true,
    },
  })
    .then((bank) => {
      res.status(200).json(success("Bank details fetched successfully!", bank));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.validateIFSC = function (req, res) {
  if (ifsc.validate(req.body.ifsc_code)) {
    ifsc.fetchDetails(req.body.ifsc_code).then(function (response) {
      res.status(200).json(success("Bank details fetched successfully!", response));
      
    }).catch((error) =>{
      res.status(400).json(errorResponse(error, 400));
    });
  }
  else{
    res.status(400).json(errorResponse("Enter valid IFSC!", ifsc.validate(req.body.ifsc_code)));
  }
  
  // console.log(ifsc.bank.PUNB); // prints PUNB
  // Prints the entire JSON from https://ifsc.razorpay.com/KKBK0000261
  // res is an object, not string

  // {
      //   MICR: '560226263',
      //   BRANCH: 'THE AGS EMPLOYEES COOP BANK LTD',
      //   ADDRESS: 'SANGMESH BIRADAR BANGALORE',
      //   STATE: 'KARNATAKA',
      //   CONTACT: '+91802265658',
      //   UPI: true,
      //   RTGS: true,
      //   CITY: 'BANGALORE',
      //   CENTRE: 'BANGALORE URBAN',
      //   DISTRICT: 'BANGALORE URBAN',
      //   NEFT: true,
      //   IMPS: true,
      //   SWIFT: 'HDFCINBB',
      //   BANK: 'HDFC Bank',
      //   BANKCODE: 'HDFC',
      //   IFSC: 'HDFC0CAGSBK'
      // }
};
