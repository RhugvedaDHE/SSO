const jwt = require("jsonwebtoken");
require("dotenv").config();

const bcrypt = require("bcryptjs");
const db = require("../models");
//const uploadFile = require("../middleware/upload");
const CompanyRemarks = require("../models").CompanyRemarks;
const UserRole = require("../models").UserRole;
const EntityUser = require("../models").EntityUser;
const { success, errorResponse, validation } = require("../responseApi");

//const db = require("../models");

//const CompanyRemarks = db.studentRemarks;
const Op = require("sequelize").Op;

// Create and Save a new CompanyRemarks
exports.create = async (req, res) => {
  console.log("in controller studentRemarks");

  let usserrole = await UserRole.findOne({
    where: {
      user_id: req.user.id,
      role_id: req.user.role_id,
    },
  });
  const query = `INSERT INTO public."CompanyRemarks" ("entity_user_id", "section", "remarks", "userrole_id", "createdAt", "updatedAt")VALUES ($1, $2, $3, $4, $5, $6) ON CONFLICT ("entity_user_id", "section") DO UPDATE SET "remarks" = $3,"updatedAt" = $6;`;

  // Execute the raw query
  const jsondata = db.sequelize
    .query(query, {
      bind: [
        req.body.entity_user_id,
        req.body.section,
        req.body.remarks,
        usserrole.id,
        new Date(),
        new Date(),
      ],
      type: db.Sequelize.QueryTypes.UPSERT,
    })
    .then((data) => {
      res
        .status(200)
        .json(success("Company Remarks created successfully!", jsondata));
    })
    .catch((error) => {
      console.log("errorrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr", error);
      res.status(400).json(errorResponse(error, 400));
    });
};

// Retrieve all CompanyRemarks from the database.
exports.findAll = (req, res) => {
  //console.log(req.params.id);

  const entity_user_id = req.body.entity_user_id;
  var condition = entity_user_id
    ? {
        entity_user_id: { [Op.eq]: entity_user_id },
        is_active: true,
      }
    : null;

  CompanyRemarks.findAll({ where: condition })
    .then((data) => {
      if (data) {
        res
          .status(200)
          .json(success("Company Remarks fetched successfully!", data));
      } else {
        res
          .status(400)
          .json(errorResponse(`Cannot find Company's Remarks`, 400));
      }
    })
    .catch((err) => {
      res.status(400).json(errorResponse(err, 400));
    });
};

// Retrieve all CompanyRemarks from the database.
exports.findByToken = async (req, res) => {
  //console.log(req.params.id);
  let entityUserId = await EntityUser.findOne({
    where: {
      user_id: req.user.id,
    },
  });

  var condition = entityUserId.id
    ? {
        entity_user_id: { [Op.eq]: entityUserId.id },
        is_active: true,
      }
    : null;

  CompanyRemarks.findAll({ where: condition })
    .then((data) => {
      if (data) {
        res
          .status(200)
          .json(success("Company Remarks fetched successfully!", data));
      } else {
        res
          .status(400)
          .json(errorResponse(`Cannot find Company's Remarks`, 400));
      }
    })
    .catch((err) => {
      res.status(400).json(errorResponse(err, 400));
    });
};

// Delete a CompanyRemarks with the specified id in the request
exports.delete = (req, res) => {
  CompanyRemarks.destroy({
    where: {
      id: req.body.id,
    },
  })
    .then((num) => {
      if (num == 1) {
        res
          .status(200)
          .json(success("Company Remarks was deleted successfully!"));
      } else {
        res
          .status(400)
          .json(
            errorResponse(
              ` Cannot delete Company Remarks. Maybe Company Remarks was not found!`,
              400
            )
          );
      }
    })
    .catch((err) => {
      res
        .status(400)
        .json(errorResponse(err + ` Cannot delete Company Remarks`, 400));
    });
};

// Find a single CompanyRemarks with an id
exports.findOne = async (req, res) => {
  const id = req.params.id;

  CompanyRemarks.findByPk(id)
    .then((data) => {
      //get owner details
      /*let ownerDetails = UserPersonalDetails.findOne({
            attributes:['firstname','lastname'],
            where:{
                user_id:data.user_id
            }
        });*/

      if (data) {
        res
          .status(200)
          .json(success("Student Remarks fetched successfully!", data));
      } else {
        res
          .status(400)
          .json(
            errorResponse(`Cannot find Student Remarks with id=${id}.`, 400)
          );
      }
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + " Error retrieving Student Remarks with id=" + id,
            400
          )
        );
    });
};

// Delete all CompanyRemarks from the database.
exports.deleteAll = (req, res) => {
  CompanyRemarks.destroy({
    where: {},
    truncate: false,
  })
    .then((nums) => {
      res
        .status(200)
        .json(success(nums + " Student Remarks was deleted successfully!"));
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + ` Some error occurred while removing all CompanyRemarks`,
            400
          )
        );
    });
};

// Find all active CompanyRemarks
exports.findAllActive = (req, res) => {
  CompanyRemarks.findAll({ where: { is_active: true } })
    .then((data) => {
      res
        .status(200)
        .json(success("Student Remarks fetched successfully!", data));
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + ` Some error occurred while retrieving CompanyRemarks`,
            400
          )
        );
    });
};
