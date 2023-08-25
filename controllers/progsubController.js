const express = require("express");
const Subject = require("../models").Subject;
const Programme = require("../models").Programme;
const ProgrammeSubject = require("../models").ProgrammeSubject;
const { success, errorResponse, validation } = require("../responseApi");
const db = require('../models');

exports.create = function (req, res) {
  ProgrammeSubject.create({
    programme_id: req.body.programme_id,
    subject_id: req.body.subject_id,
  })
    .then((progsubs) => {
      res.status(200).json(success("Programme-Subject created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await ProgrammeSubject.findAll({
    where: {
      is_active: true,
    },
    include: [
      {
        model: Subject,
        attributes: ["name", "is_active"],
      },
      {
        model: Programme,
        attributes: ["name", "is_active"],
      },
    ],
  })
    .then((progsubs) => {
      res
        .status(200)
        .json(success("Programme-Subjects fetched successfully!", progsubs));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

/* API to get Programme Subjects based on programme_id
 * params: programme_id
 */
exports.getProgramSubjects = async (req, res) => {
  const programmeId = req.params.id;

  let query = `SELECT ps.*,s.name as subject_name`;
  query += ` FROM public."ProgrammeSubjects" as ps `;
  query += ` INNER JOIN public."Subjects" as s ON s.id = ps.subject_id`;
  query += ` WHERE ps."programme_id" = ${programmeId}`;
  query += ` ORDER BY ps.id DESC`;

  const progSubjectResult = await db.sequelize.query(query, {
    type: db.Sequelize.QueryTypes.SELECT,
  });

  if (progSubjectResult) {
    return res
      .status(200)
      .json(
        success("Programme subjects fetched successfully!", progSubjectResult)
      );
  } else {
    return res.status(400).json(errorResponse(error, 400));
  }
};
