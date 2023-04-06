const express = require('express');
const State = require('../models').State;
const Country = require('../models').Country;
const { success, errorResponse, validation } = require("../responseApi");

exports.create = function (req, res){
    State.create({
        name:req.body.name,
        country_id: req.body.country_id
    }).then(states => {
        res.status(200).json(success("State created successfully!"))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}

exports.get = async function (req, res){
    await State.findAll({
        where: {
            is_active: true,
            country_id: req.body.country_id
        },
        include: [{
            model: Country,
            attributes: ['name', 'is_active']  
        }],
    }).then(states => {
        res.status(200).json(success("States fetched successfully!", states))
    }).catch(error => {
        res.status(400).json(errorResponse(error, 400));
    })
}