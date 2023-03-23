const express = require('express');
const ServiceRole = require('../models').ServiceRole;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res){
    ServiceRole.create({
        service_id: req.body.service_id,
        role_id: req.body.role_id
    }).then(serviceroles => {
        res.status(200).json(success("ServiceRole mapping created successfully!"))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.get = async function (req, res){
    await ServiceRole.findAll({
        where: {
            is_active: true,
        },
    }).then(serviceroles => {
        res.status(200).json(success("ServiceRoles fetched successfully!", serviceroles))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}