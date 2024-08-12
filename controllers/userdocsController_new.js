const jwt = require("jsonwebtoken");
require("dotenv").config();

const bcrypt = require("bcryptjs");
const db = require("../models");
//const uploadFile = require("../middleware/upload");
const User = require("../models").User;
const userDocs = require("../models").UserDocs;
const docType = require("../models").DocumentType;
const UserDocs = require("../models").UserDocs;

var multer = require("multer");
const { success, errorResponse, validation } = require("../responseApi");
const env = process.env.NODE_ENV || "development";

const PDFDocument = require("pdfkit");

let PORT = process.env.PORT;

const path = require("path");
const url = require("url");
const fs = require("fs");
const { type } = require("os");

const Op = require("sequelize").Op;

// Set up storage engine
const storage = multer.diskStorage({
  destination: "./uploads/user",
  filename: (req, file, cb) => {
    let docTypeId = Number(req.body.doc_type_id);
    let prefix = docTypeId === 21 ? "offer_" : "user_";
    cb(
      null,
      `${prefix}${file.fieldname}-${Date.now()}${path.extname(
        file.originalname
      )}`
    );
  },
});

// Initialize upload variable
const upload = multer({
  storage: storage,
  limits: { fileSize: 1000000 }, // 1MB file size limit
  fileFilter: (req, file, cb) => {
    checkFileType(file, cb);
  },
}).single("doc"); // 'doc' is the name attribute in the form

// Check file type
function checkFileType(file, cb) {
  // Allowed file types
  const filetypes = /jpeg|jpg|png|pdf|doc|docx/;
  // Check ext
  const extname = filetypes.test(path.extname(file.originalname).toLowerCase());
  // Check mime
  const mimetype = filetypes.test(file.mimetype);

  if (mimetype && extname) {
    return cb(null, true);
  } else {
    cb("Error: Invalid file type!");
  }
}

// Controller function for uploading documents
exports.uploadDoc = async (req, res) => {
  upload(req, res, async (err) => {
    if (err) {
      return res.status(400).json({ message: err });
    }
    if (!req.file) {
      return res.status(400).json({ message: "No file uploaded!" });
    }

    try {
      const { doc_type_id } = req.body;
      const filename = req.file.filename;

      let docId = Number(req.body.doc_id);
      
      if (docId) {
        console.log("heeyyyyy heeerrrreee", docId);
        //find the file details and unlink the existing file
        userDocs.findByPk(docId).then(async (data) => {
          if (data) {
            console.log(path.resolve(__dirname, ".."));
            const directoryPath =
              path.resolve(__dirname, "..") + "/uploads/user/";
            console.log(directoryPath);

            fs.unlink(directoryPath + data.filename, async (err) => {
              if (err) {
                throw err;
              }
              const filename = req.file.filename;

              const userDoc = {
                user_id: req.user.id,
                doc_type_id: req.body.doc_type_id,
                filename: req.file.filename,
                createdAt: new Date(),
                updateAt: new Date(),
              };

              const docUpdated = await userDocs
                .update(userDoc, {
                  where: { id: docId },
                })
                .then((updated) => {
                  return res
                    .status(200)
                    .json({ message: "File updated successfully!" });
                });
            });
          }
        }).catch((error) =>{
          res.status(500).json({ message: "Failed to upload document." });
        });
      } else {
        // Create or update user document based on doc_type_id
        const userDoc = {
          user_id: req.user.id, // Assuming you have user information in req.user
          doc_type_id: Number(doc_type_id),
          filename: filename,
          createdAt: new Date(),
          updatedAt: new Date(),
        };

        // Create new document record
        console.log("YYYYYYYYYYYYYYYYYYYYYYEAAAAAAAAAAAAAAAAAAAAAAAAAAAAYYYYYYYYYYYYYYYYYYYYYYYYY careted", userDoc);
        // return res.status(200).json({ message: "file uploaded!" });
        const createdDoc = await userDocs.create(userDoc).then((created) => {
          res
            .status(200)
            .json({ message: "File uploaded successfully!", created });
        });
      }
    } catch (error) {
      console.error("Error uploading document:", error);
      res.status(500).json({ message: "Failed to upload document." });
    }
  });
};
// };
//   console.log(
//     "in controller user doc - upload userrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr",
//     req.body
//   );

//   var storage = multer.diskStorage({
//     destination: function (request, file, callback) {
//       //req.body.user_id
//       // fs.mkdir('./uploads/user/'+req.body.user_id);
//       callback(null, "./uploads/user");
//     },
//     filename: async function (request, file, callback) {
//       var temp_file_arr = file.originalname.split(".");

//       var temp_file_name = temp_file_arr[0];

//       var temp_file_extension = temp_file_arr[1];
//       let docTypeId = Number(request.body.doc_type_id);

//       if (docTypeId == 21) {
//          callback(
//           null,
//           "offer_" +
//             Date.now() +
//             "_" +
//             temp_file_name +
//             "." +
//             temp_file_extension
//         );
//       } else {
//         callback(
//           null,
//           "user_" +
//             Date.now() +
//             "_" +
//             temp_file_name +
//             "." +
//             temp_file_extension
//         );
//       }
//     },
//   });

//   const maxSize = 50720; //30kb

//   var upload = multer({
//     storage: storage,
//     fileFilter: function (req, file, callback) {
//       //var ext = path.extname(storage.filename);
//       /*if(ext !== '.png' && ext !== '.jpg' && ext !== '.gif' && ext !== '.jpeg') {
//                               return callback(new Error('Only images are allowed'))
//                           }
//                           callback(null, true);*/

//       let docTypeId = Number(req.body.doc_type_id);
//       console.log("BLA BLA:", docTypeId);
//       console.log("BLA BLA BLA BLA BLA BLA BLA BLA:", req.body);
//       //validations to be done here
//       if (docTypeId == 22) {
//       } else if (docTypeId == 20) {
//       } else if (docTypeId == 23) {
//       } else if (
//         docTypeId == 25 ||
//         docTypeId == 26 ||
//         docTypeId == 27
//         // docTypeId == 28 ||
//         // docTypeId == 29
//       ) {
//       } else {
//         res
//           .status(400)
//           .json(errorResponse(`Please enter a valid Document ID!`, 400));
//         return false;
//       }

//       if (
//         file.mimetype === "application/pdf" ||
//         file.mimetype === "image/png" ||
//         file.mimetype === "image/jpg" ||
//         file.mimetype === "image/jpeg"
//       ) {
//         callback(null, true);
//       } else {
//         //callback(null, false);
//       }

//     },
//     limits: { fileSize: maxSize },
//   }).single("document");

//   upload(req, res, async function (error) {
//     if (error) {
//       console.log(error);
//       res.status(400).json(success("Error uploading file!"));
//     } else {
//       // Save UserDocs in the database
//       docId = Number(req.body.doc_id);

//       if (docId) {
//         //find the file details and unlink the existing file
//         userDocs.findByPk(docId).then((data) => {
//           if (data) {
//             console.log(__dirname);
//             const directoryPath = baseDirectory + "/uploads/user/";
//             console.log(directoryPath);

//             fs.unlink(directoryPath + data.filename, (err) => {
//               if (err) {
//                 throw err;
//               }

//               console.log("Delete File successfully.");
//             });
//           }
//         });

//         const filename = req.file.filename;

//         const userDoc = {
//           user_id: req.user.id,
//           doc_type_id: req.body.doc_type_id,
//           filename: filename,
//           createdAt: new Date(),
//           updateAt: null,
//         };

//         const docUpdated = await userDocs.update(userDoc, {
//           where: { id: docId },
//         });

//         if (docUpdated) {
//           res
//             .status(200)
//             .json(success("Student Document added successfully!", docUpdated));
//         }
//       } else {
//         console.log("Testing file name:", req.file.filename);
//         const filename = req.file.filename;

//         const userDoc = {
//           user_id: req.user.id,
//           doc_type_id: req.body.doc_type_id,
//           filename: filename,
//           createdAt: new Date(),
//           updateAt: null,
//         };
//         let data = await userDocs.create(userDoc);
//         if (data) {
//           // res
//           //   .status(200)
//           //   .json(success("Student Document added successfully!", data));
//         }
//         // res
//         //     .status(400)
//         //     .json(success("Could not upload Student Document!"));
//       }
//     }
//   });
// };

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

exports.createUndertakingPdf = async function (req, res) {
  let fileName = "user_" + Date.now() + "." + "pdf";
  let jsondata = [];
  let pdfDoc = new PDFDocument();
  pdfDoc.pipe(
    fs.createWriteStream(
      "C:/Users/admin/new-sequelize/uploads/user/" + fileName
    )
  );
  pdfDoc.text(
    "BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH"
  );
  pdfDoc.end();

  const query = `INSERT INTO public."UserDocs" ("user_id", "doc_type_id", "filename", "createdAt", "updatedAt") VALUES ($1, $2, $3, $4, $5) ON CONFLICT ("user_id", "doc_type_id") DO UPDATE SET "filename" = $3,"updatedAt" = $5;`;

  // Execute the raw query
  const response = await db.sequelize.query(query, {
    bind: [req.user.id, 22, fileName, new Date(), new Date()],
    type: db.Sequelize.QueryTypes.UPSERT,
  });

  if (response) {
    let userDoc = await UserDocs.findOne({
      where: {
        user_id: req.user.id,
        doc_type_id: 22,
      },
    });

    jsondata.push({
      filename: fileName,
      fileurl:
        req.protocol + "://" + req.get("host") + "/static/user/" + fileName,
    });
    res
      .status(200)
      .json(
        success("Student Undertaking document created successfully!", jsondata)
      );
  }
};

// exports.uploadUndertakingPdf = async function (req, res) {
//   const http = require('http'); // or 'https' for https:// URLs
//   const fs = require('fs');

//   const file = fs.createWriteStream("./uploads/user", { flags: "wrposta+" });
//   const request = http.get(req.body.fileUrl, function(response) {
//     response.pipe(file);

//     // after download completed close filestream
//     file.on("finish", () => {
//         file.close();
//         console.log("Download Completed");

//         let undertaking_doc_id = userDocs.findOne({
//           where: {
//             user_id: req.user.id,
//             doc_type_id: 22
//           }
//         });
//         const userDoc = {
//           user_id: req.user.id,
//           doc_type_id: 22,
//           filename: req.body.filename,
//           createdAt: new Date(),
//           updateAt: null,
//         };

//         let docUpdated =  userDocs.update(userDoc, {
//           where: { id: undertaking_doc_id.id },
//         });

//             // Execute the raw query
//             let jsondata =  db.sequelize.query(query, {
//               bind: [
//                 req.user.id,
//                 22,
//                 req.body.filename,
//                 new Date(),
//                 new Date(),
//               ],
//               type: db.Sequelize.QueryTypes.UPSERT,
//             });

//             if (jsondata) {
//               let userDoc =  UserDocs.findOne({
//                 where: {
//                   user_id: req.user.id,
//                   doc_type_id: 22,
//                 },
//               });

//               res
//                 .status(200)
//                 .json(success("Student Undertaking document created successfully!", req.protocol + "://" + req.get("host") + "/static/user/" + fileName));
//             }
//     });
//   });

//     };

//download undertaking signedoc (called from PHP)
exports.downloadSignedUndertakingPdf = async function (req, res) {
  const filename = req.params.filename;
  const userid = req.user.id;
  const axios = require("axios");
  const fs = require("fs");
  const path = require("path");
  const rootPath = "C:/Users/admin/new-sequelize";
  const url = "http://localhost/E-sign/esign/temp/" + filename;
  const staticLocation = path.join(
    rootPath,
    "/uploads/user",
    req.params.filename
  ); // Change 'downloaded_file.ext' to desired file name and extension
  axios
    .get(url, { responseType: "stream" })
    .then(async (response) => {
      // Saving file to working directory
      const writer = await response.data.pipe(
        fs.createWriteStream(staticLocation)
      );
      console.log("File downloaded and saved successfully.");
      let undertaking_doc_id = await userDocs.findOne({
        where: {
          user_id: userid,
          doc_type_id: 22,
        },
      });

      const userDoc = {
        user_id: userid,
        doc_type_id: 22,
        filename: req.params.filename,
        createdAt: new Date(),
        updateAt: null,
      };

      await userDocs
        .update(userDoc, {
          where: { id: undertaking_doc_id.id },
        })
        .then(async (response) => {
          // Execute the raw query
          // let jsondata = await db.sequelize.query(query, {
          //   bind: [userid, 22, req.params.filename, new Date(), new Date()],
          //   type: db.Sequelize.QueryTypes.UPSERT,
          // });

          if (response) {
            let userDoc = UserDocs.findOne({
              where: {
                user_id: userid,
                doc_type_id: 22,
              },
            });

            //update is_signed in users to true
            await User.update(
              { is_signed: true },
              {
                where: { id: userid },
              }
            );
            res
              .status(200)
              .json(
                success(
                  "Student Undertaking document created successfully!",
                  req.protocol +
                    "://" +
                    req.get("host") +
                    "/static/user/" +
                    filename
                )
              );
          }
        });
    })
    .catch((error) => {
      res
        .status(400)
        .json(
          errorResponse(
            error.stack + ` Cannot upload Student's signed undertaking!`,
            400
          )
        );
    });
};
