const express = require("express");
const Institute = require("../models").Institute;
const Programme = require("../models").Programme;
const Subject = require("../models").Subject;
const InstituteProgrammeSubject =
  require("../models").InstituteProgrammeSubject;
  const InstituteProgramme =
  require("../models").InstituteProgramme;
const UserDocs = require("../models").UserDocs;
const { success, errorResponse, validation } = require("../responseApi");
const Op = require("sequelize").Op;
const { sequelize } = require("../models");
exports.create = async function (req, res) {
  console.log(req.body);
  await InstituteProgrammeSubject.findOne({
    where: {
      institute_id: req.body.institute_id,
      programme_id: req.body.programme_id,
      subject_id: req.body.subject_id,
      is_active: true,
    },
  }).then(async (feestructure) => {
    var data = {
      institute_id: req.body.institute_id,
      programme_id: req.body.programme_id,
      subject_id: req.body.subject_id,
      userdoc_id: req.body.userdoc_id,
    };

    if (!feestructure) {
      await InstituteProgrammeSubject.create(data)
        .then((feestructure) => {
          res.status(200).json(success("Fee-structure created successfully!"));
        })
        .catch((error) => {
          res.status(400).json(errorResponse(error, 400));
        });
    } else {
      await InstituteProgrammeSubject.update(data, {
        where: {
          institute_id: req.body.institute_id,
          programme_id: req.body.programme_id,
        },
      })
        .then((feestructure) => {
          res.status(200).json(success("Fee-structure updated successfully!"));
        })
        .catch((error) => {
          res.status(400).json(errorResponse(error, 400));
        });
    }
  });
};

exports.createBulk = async function (req, res) {
  for (const item of req.body) {
    await InstituteProgrammeSubject.create({
      institute_id: item.institute,
      programme_id: item.programme,
      subject_id: item.subject,
      userdoc_id: null,
    });
  }

  res.status(200).json(success("Inst-prog-subs created successfully!"));
};

exports.get = async function (req, res) {
  const query = `
  SELECT "InstituteProgrammeSubject"."id", "InstituteProgrammeSubject"."programme_id", "InstituteProgrammeSubject"."institute_id", 
         "InstituteProgrammeSubject"."subject_id", "InstituteProgrammeSubject"."userdoc_id", "InstituteProgrammeSubject"."is_active", 
         "InstituteProgrammeSubject"."createdAt", "InstituteProgrammeSubject"."updatedAt", 
         "Institute"."id" AS "Institute.id", "Institute"."name" AS "Institute.name", 
         "Programme"."id" AS "Programme.id", "Programme"."name" AS "Programme.name", 
         "Subject"."id" AS "Subject.id", "Subject"."name" AS "Subject.name", 
         "UserDoc"."id" AS "UserDoc.id", "UserDoc"."filename" AS "filename",
         CONCAT('${req.protocol}://${req.get(
    "host"
  )}/static/user/', "UserDoc"."filename") AS "filePath"
  FROM "InstituteProgrammeSubjects" AS "InstituteProgrammeSubject"
  LEFT OUTER JOIN "Institutes" AS "Institute" ON "InstituteProgrammeSubject"."institute_id" = "Institute"."id"
  LEFT OUTER JOIN "Programmes" AS "Programme" ON "InstituteProgrammeSubject"."programme_id" = "Programme"."id"
  LEFT OUTER JOIN "Subjects" AS "Subject" ON "InstituteProgrammeSubject"."subject_id" = "Subject"."id"
  LEFT OUTER JOIN "UserDocs" AS "UserDoc" ON "InstituteProgrammeSubject"."userdoc_id" = "UserDoc"."id"
  WHERE "InstituteProgrammeSubject"."institute_id" = :institute_id
    AND "InstituteProgrammeSubject"."programme_id" = :programme_id
    AND "InstituteProgrammeSubject"."subject_id" = :subject_id
    AND "InstituteProgrammeSubject"."is_active" = true
  LIMIT 1;
`;

  const replacements = {
    institute_id: req.body.institute_id,
    programme_id: req.body.programme_id,
    subject_id: req.body.subject_id,
  };

  sequelize
    .query(query, { replacements, type: sequelize.QueryTypes.SELECT })
    .then((data) => {
      if (data.length) {
        res
          .status(200)
          .json(success("Fee-Structure fetched successfully!", data));
      } else {
        res.status(400).json(errorResponse("Records not found!", 400));
      }
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.getAll = async function (req, res) {
  //   const query = `
  //   SELECT "InstituteProgrammeSubject"."id", "InstituteProgrammeSubject"."programme_id", "InstituteProgrammeSubject"."institute_id",
  //          "InstituteProgrammeSubject"."subject_id", "InstituteProgrammeSubject"."is_active",
  //          "Institute"."id" AS "Institute.id", "Institute"."name" AS "Institute.name",
  //          "Programme"."id" AS "Programme.id", "Programme"."name" AS "Programme.name",
  //          "Subject"."id" AS "Subject.id", "Subject"."name" AS "Subject.name"
  //   FROM "InstituteProgrammeSubjects" AS "InstituteProgrammeSubject"
  //   LEFT OUTER JOIN "Institutes" AS "Institute" ON "InstituteProgrammeSubject"."institute_id" = "Institute"."id"
  //   LEFT OUTER JOIN "Programmes" AS "Programme" ON "InstituteProgrammeSubject"."programme_id" = "Programme"."id"
  //   LEFT OUTER JOIN "Subjects" AS "Subject" ON "InstituteProgrammeSubject"."subject_id" = "Subject"."id"
  //   WHERE "InstituteProgrammeSubject"."is_active" = true
  //   LIMIT 1;
  // `;

  //   sequelize
  //     .query(query, { type: sequelize.QueryTypes.SELECT })
  await InstituteProgrammeSubject.findAll({
    include: [
      {
        attributes: ["name"],
        model: Programme,
      },
      {
        attributes: ["name"],
        model: Subject,
      },
      {
        attributes: ["name"],
        model: Institute,
      },
    ],
  })
    .then((data) => {
      if (data.length) {
        res
          .status(200)
          .json(success("Inst-prog-sub fetched successfully!", data));
      } else {
        res.status(400).json(errorResponse("Records not found!", 400));
      }
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.getSubjects = async function (req, res) {
  const query = `
  SELECT "InstituteProgrammeSubject"."id", 
       "InstituteProgrammeSubject"."programme_id", 
       "InstituteProgrammeSubject"."institute_id", 
       "InstituteProgrammeSubject"."subject_id", 
       "InstituteProgrammeSubject"."is_active", 
       "Institute"."id" AS "institute_id", 
       "Institute"."name" AS "institute_name", 
       "Programme"."id" AS "programme_id", 
       "Programme"."name" AS "programme_name", 
       "Subject"."id" AS "subject_id", 
       "Subject"."name" AS "subject_name"
FROM "InstituteProgrammeSubjects" AS "InstituteProgrammeSubject"
LEFT OUTER JOIN "Institutes" AS "Institute" 
       ON "InstituteProgrammeSubject"."institute_id" = "Institute"."id"
LEFT OUTER JOIN "Programmes" AS "Programme" 
       ON "InstituteProgrammeSubject"."programme_id" = "Programme"."id"
LEFT OUTER JOIN "Subjects" AS "Subject" 
       ON "InstituteProgrammeSubject"."subject_id" = "Subject"."id"
WHERE "InstituteProgrammeSubject"."institute_id" = :institute_id
    AND "InstituteProgrammeSubject"."programme_id" = :programme_id
  AND "InstituteProgrammeSubject"."is_active" = true;`;

  const replacements = {
    institute_id: req.body.institute_id,
    programme_id: req.body.programme_id,
  };

  sequelize
    .query(query, { replacements, type: sequelize.QueryTypes.SELECT })
    .then((data) => {
      if (data.length) {
        res.status(200).json(success("Subjects fetched successfully!", data));
      } else {
        res.status(400).json(errorResponse("Records not found!", 400));
      }
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

// Delete a programme from institute_programme and inst-prog-sub with the specified id in the request
exports.deleteProgramme = async (req, res) => {
  const id = req.body.institute_id;

  await InstituteProgramme.destroy({
    where: {
      institute_id: req.body.institute_id,
      programme_id: req.body.programme_id,
    },
  })
    .then(async (num) => {
      await InstituteProgrammeSubject.destroy({
        where: {
          institute_id: req.body.institute_id,
          programme_id: req.body.programme_id,
        },
      }).then(async (num) => {
        res
          .status(200)
          .json(success("Programme deleted successfully from the mapping!"));
      });
    })
    .catch((err) => {
      res
        .status(400)
        .json(errorResponse(err + ` Cannot delete programme mapping!`, 400));
    });
};

// Delete a subject from inst-prog-sub with the specified id in the request
exports.deleteSubject = async (req, res) => {
  await InstituteProgrammeSubject.destroy({
    where: {
      institute_id: req.body.institute_id,
      programme_id: req.body.programme_id,
      subject_id: req.body.subject_id,
    },
  })
    .then(async (num) => {
      res
        .status(200)
        .json(success("Subject deleted successfully from the mapping!"));
    })

    .catch((err) => {
      res
        .status(400)
        .json(errorResponse(err + ` Cannot delete Subject mapping!`, 400));
    });
};
