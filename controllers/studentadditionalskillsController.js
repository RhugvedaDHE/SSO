const jwt = require("jsonwebtoken");
require("dotenv").config();

const bcrypt = require("bcryptjs");
const db = require("../models");
//const uploadFile = require("../middleware/upload");
const StudentAdditionalSkill = require("../models").StudentAdditionalSkill;
const Duration = require("../models").Duration;
const Mode = require("../models").Mode;
const AdditionalSkill = require("../models").AdditionalSkill;
const UserDocs = require("../models").UserDocs;
const { success, errorResponse, validation } = require("../responseApi");
const e = require("express");

//const db = require("../models");

//const StudentMarks = db.studentMarks;
const Op = require("sequelize").Op;

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
    mode_id: req.body.mode_id,
    user_docs_id: req.body.user_docs_id,
  };

  // Save StudentMarks in the database
  StudentAdditionalSkill.create(studAddSkills)
    .then((data) => {
      res
        .status(200)
        .json(success("Student Additional Skills created successfully!", data));
    })
    .catch((err) => {
      res.status(400).json(errorResponse(err, 400));
    });
};

// Retrieve all StudentAdditional Skills from the database.
exports.findAll = async (req, res) => {
  await StudentAdditionalSkill.findAll({
    order: [['createdAt', 'DESC']],
    where: {      
      user_id: req.user.id,
    },
    include: [
      {
        model: Duration,
        attributes: ["id", "name"],
      },
      {
        model: Mode,
        attributes: ["id", "name"],
      },
      {
        model: AdditionalSkill,
        attributes: ["id", "name"],
      },
      {
        model: UserDocs,
        attributes: ["id", "filename", "doc_type_id"],
      },
    ],
  })
    .then((skills) => {
      let finalData = [];
      for (let skill of skills) {
        let data = {};
        data.skills = skill;
        data.filePath = skill.UserDoc
          ? req.protocol +
            "://" +
            req.get("host") +
            "/static/user/" +
            skill.UserDoc.filename
          : null;
        finalData.push(data);
      }

      res
        .status(200)
        .json(
          success("Student Additional Skills fetched successfully!", finalData)
        );
    })
    .catch((error) => {
      console.log("rwerfjnjbjbjb", error);
      res.status(400).json(errorResponse(error, 400));
    });
};

// Create and Save a new StudentMarks
exports.update = async (req, res) => {
  console.log("in controller stud add skills");
  // Create a StudentMarks

  const studAddSkills = {
    title: req.body.title,
    duration_id: req.body.duration_id,
    location: req.body.location,
    mode_id: req.body.mode_id,
    user_docs_id: req.body.user_docs_id,
  };

  // Save StudentMarks in the database
  await StudentAdditionalSkill.update(studAddSkills, {
    where: { id: req.body.stud_add_skill_id, user_id: req.user.id },
  })
    .then((data) => {
      res
        .status(200)
        .json(success("Student Additional Skills updated successfully!", data));
    })
    .catch((err) => {
      res.status(400).json(errorResponse(err, 400));
    });
};

// Create and Save a new StudentMarks
exports.delete = async (req, res) => {
  console.log("in controller stud add skills");
  
  await StudentAdditionalSkill.destroy({
    where: { additional_skill_id: req.body.stud_add_skill_id, user_id: req.user.id },
  })
    .then((data) => {
      res
        .status(200)
        .json(success("Student Additional Skills deleted successfully!", data));
    })
    .catch((err) => {
      res.status(400).json(errorResponse(err, 400));
    });
};

exports.findAllAddSkillsInstAdmin = async (req, res) => {
  await StudentAdditionalSkill.findAll({
    order: [['createdAt', 'DESC']],
    where: {      
      user_id: req.params.id,
    },
    include: [
      {
        model: Duration,
        attributes: ["id", "name"],
      },
      {
        model: Mode,
        attributes: ["id", "name"],
      },
      {
        model: AdditionalSkill,
        attributes: ["id", "name"],
      },
      {
        model: UserDocs,
        attributes: ["id", "filename", "doc_type_id"],
      },
    ],
  })
    .then((skills) => {
      let finalData = [];
      for (let skill of skills) {
        let data = {};
        data.skills = skill;
        data.filePath = skill.UserDoc
          ? req.protocol +
            "://" +
            req.get("host") +
            "/static/user/" +
            skill.UserDoc.filename
          : null;
        finalData.push(data);
      }

      res
        .status(200)
        .json(
          success("Student Additional Skills fetched successfully!", finalData)
        );
    })
    .catch((error) => {
      console.log("rwerfjnjbjbjb", error);
      res.status(400).json(errorResponse(error, 400));
    });
};