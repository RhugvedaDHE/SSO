const express = require("express");
const Semester = require("../models").Semester;
const { success, errorResponse, validation } = require("../responseApi");
const Programme = require("../models/programme");
// exports.create = function (req, res){
//     Semester.create({
//         name:req.body.name,
//     }).then(semesters => {
//         res.status(200).json(success("Semester created successfully!"))
//     }).catch(error => {
//         res.status(400).json(errorResponse(error, 400));
//     })
// }

// exports.get = async function (req, res) {
//   await Programme.findOne({
//     where: {
//       is_active: true,
//       id: req.params.programme_id,
//     },
//   }).then((programme) => {
//     let semesters = {};
//     for (let i = 1; i <= programme.max_sem; i++) {
//       let name = programme.name + " SEM " + i;
//       semesters.push({ name });
//     }
//   });

  // await Semester.findAll({
  //     where: {
  //         is_active: true,
  //     }
  // }).then(semesters => {
  //     res.status(200).json(success("Semesters fetched successfully!", semesters))
  // }).catch(error => {
  //     res.status(400).json(errorResponse(error, 400));
  // })
// };
