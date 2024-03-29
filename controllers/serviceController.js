const express = require('express');
const Service = require('../models').Service;
const Role = require('../models').Role;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res){
    Service.create({
        name:req.body.name,
        url: req.body.url
    }).then(services => {
        res.status(200).json(success("Service created successfully!"))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.get = async function (req, res){
    await Service.findAll({
        where: {
            is_active: true,
        },
    }).then(services => {
        res.status(200).json(success("Services fetched successfully!", services))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.getServiceRole = async function (req, res){
    await Service.findAll({
        where: {
            is_active: true,
        }, include: [{
            model: Role,
            as: 'Roles',
            through: 'ServiceRole',  
        }],
    }).then(services => {
        var jsondata = [];
        for (const service of services){
            jsondata.push({
                id: service.id,
                name: service.name,
                url: service.url,
                image_url: req.protocol + "://" + req.get("host") + "/static/service/" + service.image_url,
            })
        }
        res.status(200).json(success("Service-Role fetched successfully!", jsondata))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}