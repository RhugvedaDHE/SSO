const express = require('express');
const Subject = require('../models').Subject;
const Programme = require('../models').Programme;
const ProgrammeSubject = require('../models').ProgrammeSubject;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res){
    ProgrammeSubject.create({
        programme_id: req.body.programme_id,
        subject_id: req.body.subject_id
    }).then(progsubs => {
        res.status(200).json(success("Programme-Subject created successfully!"))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.get = async function (req, res){
    await ProgrammeSubject.findAll({
        where: {
            is_active: true,
        },
        include: [{
            model: Subject,
            attributes: ['name', 'is_active']  
        },
        {
            model: Programme,
            attributes: ['name', 'is_active']  
        }],
    }).then(progsubs => {
        res.status(200).json(success("Programme-Subjects fetched successfully!", progsubs))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}