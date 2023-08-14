const db = require("../models");
const AdditionalSkill = require("../models").AdditionalSkill;
const DocumentType = require("../models").DocumentType;
const User = require("../models").User;
const Op = db.Sequelize.Op;
const { success, errorResponse, validation } = require("../responseApi");

// Create and Save a new Skill
exports.create = async (req, res) => {
  AdditionalSkill.create({
    name: req.body.name,
    doc_type_id: req.body.doc_type_id,
  })
    .then((data) => {
      res.status(200).json(success("Additional Skills created successfully!"));
    })
    .catch((err) => {
      res.status(500).send({
        message:
          err.message ||
          "Some error occurred while creating the Additional Skill.",
      });
    });
};

// Retrieve all OtherSkill from the database.
exports.findAll = (req, res) => {
  AdditionalSkill.findAll({
    where: { is_active: true },
    include: [
      {
        model: DocumentType,
        attributes: ["id", "name"],
      },
    ],
  })
    .then((data) => {
      res
        .status(200)
        .json(success("Additional Skills fetched successfully!", data));
    })
    .catch((err) => {
      res.status(500).send({
        message:
          err.message ||
          "Some error occurred while retrieving Additional skills.",
      });
    });
};


// Retrieve all OtherSkill from the database.
exports.delete = (req, res) => {
  AdditionalSkill.destroy({
    where: { id: req.body.stud_add_skill_id },
  })
    .then((data) => {
      res
        .status(200)
        .json(success("Additional Skills deleted successfully!"));
    })
    .catch((err) => {
      res.status(500).send({
        message:
          err.message ||
          "Some error occurred while deleting Additional skills.",
      });
    });
};
