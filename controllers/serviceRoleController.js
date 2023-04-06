const express = require('express');
const ServiceRole = require('../models').ServiceRole;
const Role = require('../models').Role;
const Service = require('../models').Service;
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
    console.log("**************************************************************SRCOnt", req.user)
    const services = {};
    await ServiceRole.findAll({
        where: {
            role_id: req.user.role_id,
            is_active: true,
        },
    }).then(serviceroles => {
        console.log("servicerfvfmdkvnkdfnkdfnkvnkdf", serviceroles)
        serviceroles.forEach(serviceRole => {
            Service.findOne({
                where: {
                    id: serviceRole.id,
                    is_active: true,
                }
            }).then(service=> {
                services.push(service);  
            })
        });  
        res.status(200).json(success("Services for the logged in user fetched successfully!", services))
        
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}