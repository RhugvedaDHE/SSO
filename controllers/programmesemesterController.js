const jwt = require("jsonwebtoken");
require("dotenv").config();

const bcrypt = require("bcryptjs");
const db = require("../models");
//const uploadFile = require("../middleware/upload");
const ProgrammeSemester = require("../models").ProgrammeSemester;
const Programme = require("../models").Programme;
const Semester = require("../models").Semester;

const { success, errorResponse, validation } = require("../responseApi");
const { empty } = require("uuidv4");

//const db = require("../models");

//const ProgrammeSemester = db.programmeSemester;
const Op = require("sequelize").Op;

// Create and Save a new ProgrammeSemester
exports.create = async (req, res) => {
  console.log("in controller programmeSemester");

  if (!req.body.program_id) {
    res.status(400).send({
      message: "Programme cannot be empty!",
    });
    return;
  }

  if (!req.body.semester_id) {
    res.status(400).send({
      message: "Semester cannot be empty!",
    });
    return;
  }

  // Create a ProgrammeSemester
  const programmeSemester = {
    program_id: req.body.program_id,
    semester_id: req.body.semester_id,
    active: req.body.active ? req.body.active : true,
    updateAt: null,
  };

  // Save ProgrammeSemester in the database
  ProgrammeSemester.create(programmeSemester)
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      res.status(500).send({
        message:
          err.message ||
          "Some error occurred while creating the ProgrammeSemester.",
      });
    });
};

// Retrieve all ProgrammeSemester from the database.
exports.findAll = async function (req, res) {
  const data = await ProgrammeSemester.findAll({
    attributes: ["semester_id"],
    where: {
      program_id: req.body.program_id,
      active: true,
    },
  });

  if (data) {
    var jsondata = [];
    for (const d of data) {
      let userdetails = await Semester.findOne({
        attributes: ["name"],
        where: {
          id: d.semester_id,
        },
      });

      jsondata.push({ semester_id: d.semester_id, name: userdetails.name });
    }
    return res
      .status(200)
      .json(success("Program semester fetched successfully!", jsondata));
  } else {
    return res.status(400).json(errorResponse(error, 400));
  }
};

// Find a single ProgrammeSemester with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  ProgrammeSemester.findByPk(id)
    .then((data) => {
      if (data) {
        res.send(data);
      } else {
        res.status(404).send({
          message: `Cannot find ProgrammeSemester with id=${id}.`,
        });
      }
    })
    .catch((err) => {
      res.status(500).send({
        message: "Error retrieving ProgrammeSemester with id=" + id,
      });
    });
};

// Update a ProgrammeSemester by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  ProgrammeSemester.update(req.body, {
    where: { id: id },
  })
    .then((num) => {
      if (num == 1) {
        res.send({
          message: "ProgrammeSemester was updated successfully.",
        });
      } else {
        res.send({
          message: `Cannot update ProgrammeSemester with id=${id}. Maybe ProgrammeSemester was not found or req.body is empty!`,
        });
      }
    })
    .catch((err) => {
      res.status(500).send({
        message: "Error updating ProgrammeSemester with id=" + id,
      });
    });
};

// Delete a ProgrammeSemester with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  ProgrammeSemester.destroy({
    where: { id: id },
  })
    .then((num) => {
      if (num == 1) {
        res.send({
          message: "ProgrammeSemester was deleted successfully!",
        });
      } else {
        res.send({
          message: `Cannot delete ProgrammeSemester with id=${id}. Maybe ProgrammeSemester was not found!`,
        });
      }
    })
    .catch((err) => {
      res.status(500).send({
        message: "Could not delete ProgrammeSemester with id=" + id,
      });
    });
};

// Delete all ProgrammeSemester from the database.
exports.deleteAll = (req, res) => {
  ProgrammeSemester.destroy({
    where: {},
    truncate: false,
  })
    .then((nums) => {
      res.send({
        message: `${nums} ProgrammeSemester were deleted successfully!`,
      });
    })
    .catch((err) => {
      res.status(500).send({
        message:
          err.message ||
          "Some error occurred while removing all ProgrammeSemester.",
      });
    });
};

// Find all active ProgrammeSemester
exports.findAllActive = (req, res) => {
  ProgrammeSemester.findAll({ where: { is_active: true } })
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      res.status(500).send({
        message: err.message || "Some error occurred while retrieving Degrees.",
      });
    });
};

/* API to get Programme semesters based on programme_id
 * params: id as programme_id
 */
exports.getProgrammeSemesters = async (req, res) => {
  const programmeId = req.params.id;

  let query = `SELECT ps.*,s.name as semester_name`;
  query += ` FROM public."ProgrammeSemesters" as ps `;
  query += ` INNER JOIN public."Semesters" as s ON s.id = ps."semester_id"`;
  query += ` WHERE ps."programme_id" = ${programmeId}`;
  query += ` ORDER BY ps.id DESC`;

  const progSemesterResult = await db.sequelize.query(query, {
    type: db.Sequelize.QueryTypes.SELECT,
  });

  if (progSemesterResult) {
    return res
      .status(200)
      .json(
        success("Programme semesters fetched successfully!", progSemesterResult)
      );
  } else {
    return res.status(400).json(errorResponse(error, 400));
  }
};
