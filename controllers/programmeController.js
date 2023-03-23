const express = require('express');
const Programme = require('../models').Programme;
const InstituteProgramme = require('../models').InstituteProgramme;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res){
    Programme.create({
        name:req.body.name,
    }).then(programmes => {
        res.status(200).json(success("Programme created successfully!"))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.get = async function (req, res){
    await Programme.findAll({
        where: {
            is_active: true,
        },
    }).then(programmes => {
        res.status(200).json(success("Programmes fetched successfully!", programmes))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.getInstituteProgramme = async function (req, res){
    await InstituteProgramme.findAll({
        where: {
            institute_id: req.body.institute_id,
            is_active: true,
        },        
    }).then(instprogrammes => {
        instprogrammes.forEach(instProg => {
            Programme.findAll({
                where: {
                    id: instProg.programme_id,
                    is_active: true,
                }
            }).then(programmes =>{
                res.status(200).json(success("Institute-Programmes fetched successfully!", programmes))
            })
          });        
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}
