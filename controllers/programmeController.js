const express = require("express");
const Programme = require("../models").Programme;
const InstituteProgramme = require("../models").InstituteProgramme;
const { success, errorResponse, validation } = require("../responseApi");
const programme = require("../models/programme");
const db = require("../models");
exports.create = function (req, res) {
  console.log(req.body);
  Programme.create({
    name: req.body.name,
    programme_desc: req.body.programme_desc,
    max_sem: req.body.max_sem,
    type: req.body.type,
    stream_id: req.body.stream_id,
    order: req.body.order,
    doc_type_id: req.body.doc_type_id,
  })
    .then((programmes) => {
      res.status(200).json(success("Programme created successfully!"));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.update = function (req, res) {
  Programme.update(
    { max_sem: req.body.max_sem },
    { where: { id: req.body.programme_id } }
  )
    .then((programme) => {
      res
        .status(200)
        .json(success("Programme updated successfully!", programme));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.get = async function (req, res) {
  await Programme.findAll({
    where: {
      is_active: true,
    },
    order: [["order", "ASC"]],
  })
    .then((programmes) => {
      res
        .status(200)
        .json(success("Programmes fetched successfully!", programmes));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.getProgSems = async function (req, res) {
  console.log(
    "hey there!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",
    req.body.programme_id
  );
  const semesters = [];
  await Programme.findOne({
    where: {
      id: req.body.programme_id,
      is_active: true,
    },
  })
    .then((programme) => {
      for (let i = 1; i <= programme.max_sem; i++) {
        semesters.push(programme.type + " SEM " + i);
      }
      res
        .status(200)
        .json(success("Programme semesters fetched successfully!", semesters));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.getInstituteProgramme = async function (req, res) {
  const instituteId = req.body.institute_id;

  var query = `SELECT ip.*, progs.*`;
  query+= ` FROM public."InstituteProgrammes" as ip`;
  query+= ` INNER JOIN public."Programmes" as progs ON ip.programme_id = progs.id `;
  query+= ` WHERE ip."institute_id" = ${instituteId}`;
  // query+= ` ORDER BY s."id" ASC`;

  const jsondata = await db.sequelize.query(query, {
    type: db.Sequelize.QueryTypes.SELECT,
  });

  // await InstituteProgramme.findAll({
  //   where: {
  //     institute_id: req.body.institute_id,
  //     is_active: true,
  //   },
  // })
  //   .then((instprogrammes) => {
  //     var instprog = [];
  //     instprogrammes.forEach(async (instProg) => {
  //       await Programme.findOne({
  //         where: {
  //           id: instProg.programme_id,
  //           is_active: true,
  //         },
  //       }).then(async (programmes) => {
  //         console.log(programmes.name)
  //         instprog.push({
  //           id: 12,
  //           name: "programmes.name"
  //         });
  //       });
  //     });
      res
        .status(200)
        .json(success("Institute-Programmes fetched successfully!", jsondata));
    // })
    // .catch((error) => {
    //   res.status(400).json(errorResponse(error, 400));
    // });
};
