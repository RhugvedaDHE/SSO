const jwt = require("jsonwebtoken");
require("dotenv").config();

const bcrypt = require("bcryptjs");
const db = require("../models");
//const uploadFile = require("../middleware/upload");
const userDocs = require("../models").UserDocs;
const docType = require("../models").DocumentType;
const UserDocs = require("../models").UserDocs;

var multer = require("multer");
const { success, errorResponse, validation } = require("../responseApi");

const env = process.env.NODE_ENV || "development";

let PORT = process.env.PORT;
//const uploadUrl = 'http://192.168.1.184:3000/static';

// Creating express object
//const app = express();
const path = require("path");
const url = require("url");
const fs = require("fs");

const Op = require("sequelize").Op;

exports.uploadDoc = async (req, res) => {
  console.log("in controller user doc - upload user");

  var storage = multer.diskStorage({
    destination: function (request, file, callback) {
      //req.body.user_id
      // fs.mkdir('./uploads/user/'+req.body.user_id);
      callback(null, "./uploads/user");
    },
    filename: function (request, file, callback) {
      var temp_file_arr = file.originalname.split(".");

      var temp_file_name = temp_file_arr[0];

      var temp_file_extension = temp_file_arr[1];

      callback(null, "user_" + Date.now() + "." + temp_file_extension);
    },
  });

  const maxSize = 30720; //30kb
  var upload = multer({
    storage: storage,
    fileFilter: function (req, file, callback) {
      var ext = path.extname(file.originalname);
      /*if(ext !== '.png' && ext !== '.jpg' && ext !== '.gif' && ext !== '.jpeg') {
                              return callback(new Error('Only images are allowed'))
                          }
                          callback(null, true);*/

      if (
        file.mimetype === "application/pdf" ||
        file.mimetype === "image/png" ||
        file.mimetype === "image/jpg" ||
        file.mimetype === "image/jpeg"
      ) {
        // check file type to be png, jpeg, or jpg
        callback(null, true);
      } else {
        callback(null, false); // else fails
      }
    },
    limits: { fileSize: maxSize },
  }).single("document");

  upload(req, res, async function (error) {
    if (error) {
      console.log(error);
      res.send("Error Uploading File " + error);
    } else {
      // const userDocsData = {
      //   user_id: req.body.user_id,
      //   doc_type_id: req.body.doc_type_id,
      //   filename: req.file.filename,
      //   active: true,
      //   createdAt: new Date(),
      //   updatedAt: null,
      // };
      // console.log(userDocsData);
      // Save UserDocs in the database
      const query = `
          INSERT INTO public."UserDocs" ("user_id", "doc_type_id", "filename", "createdAt", "updatedAt")
          VALUES ($1, $2, $3, $4, $5)
          ON CONFLICT ("user_id", "doc_type_id")
          DO UPDATE SET "filename" = $3,"updatedAt" = $5;`;

      // Execute the raw query
      const jsondata = await db.sequelize.query(query, {
        bind: [
          req.body.user_id,
          req.body.doc_type_id,
          req.file.filename,
          new Date(),
          new Date(),
        ],
        type: db.Sequelize.QueryTypes.UPSERT,
      });

      if (jsondata) {
        let userDoc = await UserDocs.findOne({
          where: {
            user_id: req.body.user_id,
            doc_type_id: req.body.doc_type_id,
          },
        });
        console.log(
          "suuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuussssssssssssssssssssssssseeeeeeeeeeeeeeeeeecccccccc",
          userDoc
        );
        res
          .status(200)
          .json(success("Student Document added successfully!", userDoc));
      }
    }
  });
};

// Retrieve all UserDocs from the database.
exports.findAll = async (req, res) => {
  console.log(req.params.id);

  const userId = req.params.id;
  var condition = userId ? { user_id: { [Op.eq]: userId } } : null;

  const data = await userDocs.findAll({ where: condition });

  if (data) {
    var docsData = [];
    for (const rm of data) {
      //take document type details and add to array below
      let docTypeData = await docType.findOne({
        where: {
          id: rm.doc_type_id,
        },
      });

      //const filePath = uploadUrl+"/user/"+userId+"/"+rm.filename;
      const filePath =
        req.protocol + "://" + req.get("host") + "/static/user/" + rm.filename;

      docsData.push({
        id: rm.id,
        doc_type_id: rm.doc_type_id,
        doc_type_name: docTypeData.name,
        filename: rm.filename,
        filepath: filePath,
      });
    }

    if (docsData) {
      res
        .status(200)
        .json(success("User documents fetched successfully!", docsData));
    } else {
      res
        .status(400)
        .json(errorResponse(`Cannot find Student's Documents`, 400));
    }
  }
};

//this API is not in use: paresh
exports.showImage = (req, res) => {
  const userId = req.body.user_id;
  const filename = req.body.filename;

  // Path Refinements
  const filePath = uploadUrl + "/user/" + userId + "/" + filename; //path.join(__dirname,		action).split("%20").join(" ");

  // Checking if the path exists
  const request = url.parse(filePath, true);

  // Extracting the path of file
  const action = request.pathname;
  // Extracting file extension
  const ext = path.extname(action);

  // Setting default Content-Type
  const contentType = "text/plain";

  // Checking if the extension of
  // image is '.png'
  if (ext === ".png") {
    contentType = "image/png";
  }

  // Setting the headers
  res.writeHead(200, {
    "Content-Type": contentType,
  });

  // Reading the file
  //fs.readFile(filePath,
  //	function (err, contentType) {
  // Serving the image
  //	console.log(content);
  //	});

  fs.readFile(
    "uploads/user/" + userId + "/" + filename,
    "utf8",
    function (err, data) {
      console.log(filePath);
      console.log(err);
      // console.log(data);
      res.end(data);
    }
  );
};

// Find a single UserDocs with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  userDocs
    .findByPk(id)
    .then((data) => {
      if (data) {
        var docsData = [];
        const filePath =
          req.protocol +
          "://" +
          req.get("host") +
          "/static/user/" +
          data.filename;

        docsData.push({
          id: data.id,
          doc_type_id: data.doc_type_id,
          doc_type_name: data.name,
          filename: data.filename,
          filepath: filePath,
        });

        res
          .status(200)
          .json(
            success("Student Documents fetched successfully!", docsData[0])
          );
      } else {
        res
          .status(400)
          .json(
            errorResponse(`Cannot find Student Documents with id=${id}.`, 400)
          );
      }
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + " Error retrieving Student Documents with id=" + id,
            400
          )
        );
    });
};

// Delete a UserDocs with the specified id in the request
exports.delete = (req, res) => {
  console.log("heyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy", req.user);
  const user_id = req.user.id;
  const id = req.body.doc_id;
  console.log(user_id);
  userDocs
    .destroy({
      where: {
        id: id,
        user_id: user_id,
      },
    })
    .then((num) => {
      if (num == 1) {
        res
          .status(200)
          .json(success("Student Documents was deleted successfully!"));
      } else {
        res
          .status(400)
          .json(
            errorResponse(
              ` Cannot delete UserDocs with id=${id}. Maybe Student Documents was not found!`,
              400
            )
          );
      }
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + ` Cannot delete Student Documents with id=${id}`,
            400
          )
        );
    });
};

// Delete all UserDocs from the database.
exports.deleteAll = (req, res) => {
  userDocs
    .destroy({
      where: {},
      truncate: false,
    })
    .then((nums) => {
      res
        .status(200)
        .json(success(nums + " Student Documents was deleted successfully!"));
    })
    .catch((err) => {
      res
        .status(400)
        .json(
          errorResponse(
            err + ` Some error occurred while removing all UserDocs`,
            400
          )
        );
    });
};
