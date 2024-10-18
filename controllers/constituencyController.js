const express = require('express');
const Constituency = require('../models').Constituency;
const State = require('../models').State;
const { success, errorResponse } = require("../responseApi");

// Create a constituency
exports.create = function (req, res) {
    Constituency.create({
        name: req.body.name,
        state_id: req.body.state_id   // Make sure this matches the model field
    })
    .then(constituency => {
        res.status(200).json(success("Constituency created successfully!", constituency));
    })
    .catch(error => {
        res.status(400).json(errorResponse(error, 400));
    });
};

// Get active constituencies by state_id
exports.get = async function (req, res) {
    try {
        const constituencies = await Constituency.findAll({
            where: {
                is_active: true,
                state_id: req.body.state_id  // Use req.params for GET request
            },
            include: [{
                model: State,
                attributes: ['name', 'is_active']
            }],
        });

        res.status(200).json(success("Constituencies fetched successfully!", constituencies));
    } catch (error) {
        res.status(400).json(errorResponse(error, 400));
    }
};
