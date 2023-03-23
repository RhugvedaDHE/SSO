const express = require('express');
const InstituteType = require('../models').InstituteType;

const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res){
    console.log(req.body);
    InstituteType.create({
        name:req.body.name,
    }).then(institutetypes => {
        res.status(200).json(success("InstituteType created successfully!"))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.get = async function (req, res){
    await InstituteType.findAll({
        where: {
            is_active: true,
        },
    }).then(institutetypes => {
        res.status(200).json(success("Institute Types fetched successfully!", institutetypes))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}