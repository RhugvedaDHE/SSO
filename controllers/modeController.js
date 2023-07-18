const db = require("../models");
const { success, errorResponse, validation } = require("../responseApi");

const Mode = require("../models").Mode;
const Op = db.Sequelize.Op;

// Create and Save a new Mode
exports.create = async (req, res) => {
    console.log("in controller mode");

    // Create a Mode
    const mode = {
      name: req.body.name,
      is_active: true,
      updateAt:null
    };

    // Save Mode in the database
    Mode.create(mode)
      .then(data => {
        res.status(200).json(success("Mode details!", data));
      })
      .catch(err => {
        res.status(400).json(errorResponse(err+" Some error occurred while creating the Mode.", 400));
    });
};

// Find all active Mode
exports.findAll = (req, res) => {
    Mode.findAll({ where: { is_active: true } })
    .then(data => {
      res.status(200).json(success("Modes retrived successfully.",data));
    })
    .catch(err => {
      res.status(400).send({
        message:
          err.message || "Some error occurred while retrieving Degrees."
      });
    });
};
