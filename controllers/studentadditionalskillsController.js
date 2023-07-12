const jwt = require('jsonwebtoken');
require('dotenv').config();

const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");
const StudentAdditionalSkill = require('../models').StudentAdditionalSkill;
const Duration = require('../models').Duration;
const Mode = require('../models').Mode;
const AdditionalSkill = require('../models').AdditionalSkill;
const { success, errorResponse, validation } = require("../responseApi");
const e = require('express');

//const db = require("../models");

//const StudentMarks = db.studentMarks;
const Op = require('sequelize').Op;

// Create and Save a new StudentMarks
exports.create = async (req, res) => {
  console.log("in controller stud add skills");
  // Create a StudentMarks

  const studAddSkills = {
    user_id: req.user.id,
    additional_skill_id: req.body.additional_skill_id,
    title: req.body.title,
    duration_id: req.body.duration_id,
    location: req.body.location,
    mode_id: req.body.mode_id
  };

  // Save StudentMarks in the database
  StudentAdditionalSkill.create(studAddSkills)
    .then(data => {
      res.status(200).json(success("Student Additional Skills created successfully!", data));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err, 400));
    });
};

// Retrieve all StudentMarks from the database.
exports.findAll = async (req, res) => {
    await StudentAdditionalSkill.findAll({
      where:{
        user_id: req.user.id
      },
      include:[
        {
          model: Duration,
          attributes: ["id", "name"]
        },
        {
          model: Mode,
          attributes: ["id", "name"]
        },
        {
          model: AdditionalSkill,
          attributes: ["id", "name"]
        }
      ]
    }).then((data) =>{
      res
      .status(200)
      .json(success("Student Additional Skills fetched successfully!", data));
    }) .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });

};
