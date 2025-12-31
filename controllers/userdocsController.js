const jwt = require("jsonwebtoken");
require("dotenv").config();

const axios = require("axios");
const clamav = require("clamav.js");
const NodeClam = require("clamscan");
const clam = new NodeClam().init();

const bcrypt = require("bcryptjs");
const db = require("../models");
//const uploadFile = require("../middleware/upload");
const User = require("../models").User;
const UserPersonalDetails = require("../models").UserPersonalDetails;
const userDocs = require("../models").UserDocs;
const docType = require("../models").DocumentType;
const StudentMarks = require("../models").StudentMarks;
const StudentEnrollment = require("../models").StudentEnrollment;

var multer = require("multer");
const { success, errorResponse, validation } = require("../responseApi");
const env = process.env.NODE_ENV || "development";

const PDFDocument = require("pdfkit");

let PORT = process.env.PORT;

const path = require("path");
const url = require("url");
const fs = require("fs");
const { type } = require("os");
const userpersonaldetails = require("../models/userpersonaldetails");

const Op = require("sequelize").Op;
const sequelize = require("../models").sequelize;
// File size limits (in bytes)
const fileSizeLimits = {
  jpeg: 500 * 1024, // 500KB for JPEG
  jpg: 500 * 1024, // 500KB for JPG
  png: 700 * 1024, // 700KB for PNG
  pdf: 1 * 1024 * 1024, // 1MB for PDF
};

// Whitelisted file extensions
const allowedExtensions = ["jpeg", "jpg", "png", "pdf"];

// Storage configuration
const storage = multer.diskStorage({
  destination: "./uploads/user", // Ensure the folder permissions are non-executable
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

// Function to scan file for malicious content
// const scanFileForMaliciousContent = async (filePath) => {
//   const scanResult = await clamscan.scan("C:\\Users\\DELL\\Downloads\\test.jpg");
//   console.log(scanResult); // Check if the file is infected

//   const { isInfected, viruses } = await clam.scanFile(filePath);
//   if (isInfected) {
//       console.log(`File is infected with ${viruses}`);
//   } else {
//       console.log('File is clean');
//   }
// };

// function scanFileForMaliciousContent(filePath) {
//   const API_KEY = 'ee498d56f24e3ec6383870365ea950c596b0a5ef1daaaaaab8a59f587ec36763';
// const scanFileForMaliciousContent = async (file) => {
//     const formData = new FormData();
//     formData.append('file', file);

//     try {
//         const response = await axios.post(
//             'https://www.virustotal.com/api/v3/files',
//             formData,
//             {
//                 headers: {
//                     'x-apikey': API_KEY,
//                     'Content-Type': 'multipart/form-data',
//                 },
//             }
//         );
//         console.log('File scan response:', response.data);
//     } catch (error) {
//         console.error('Error uploading file:', error);
//     }
// };

// console.log("***********************************************here")
// return new Promise((resolve, reject) => {
//   const CLAMAV_PORT = 3310; // Default ClamAV port
//   const CLAMAV_HOST = 'localhost'; // ClamAV host

//   try {
//     // Create a scanner instance
//     const scanner = clamav.createScanner(CLAMAV_PORT, CLAMAV_HOST);
//     console.log(scanner);
//     // Open file stream
//     const fileStream = fs.createReadStream(filePath);

//     // Scan the file
//     scanner.scan(fileStream, (err, result) => {
//       if (err) {
//         console.log(err);
//         reject(new Error('Scanning failed: ' + err.message));
//       } else if (result.isInfected) {
//         reject(new Error(`Malicious content detected: ${result.viruses}`));
//       } else {
//         resolve('File is clean');
//       }
//     });
//   } catch (error) {
//     reject(error);
//   }
// });
// }

// Function to validate file type and size
function validateFile(req, file, cb) {
  const fileExtension = path
    .extname(file.originalname)
    .toLowerCase()
    .replace(".", "");
  const fileName = file.originalname;

  // Check for allowed extensions
  if (!allowedExtensions.includes(fileExtension)) {
    return cb(
      new Error(
        "Invalid file type! Only JPEG, JPG, PNG, and PDF files are allowed."
      )
    );
  }

  // Check for double extensions or unusual characters
  if (/\.\w+\./.test(fileName) || /[;/\\]/.test(fileName)) {
    return cb(
      new Error(
        "Invalid file name! Double extensions or unusual characters are not allowed."
      )
    );
  }

  // Check file size
  const fileSizeLimit = fileSizeLimits[fileExtension];
  if (file.size > fileSizeLimit) {
    const limitInMB = (fileSizeLimit / (1024 * 1024)).toFixed(2);
    return cb(
      new Error(
        `File size exceeds limit! ${fileExtension.toUpperCase()} files must be smaller than ${limitInMB}MB.`
      )
    );
  }

  cb(null, true);
}

const upload = multer({
  storage: storage,
  fileFilter: validateFile,
}).single("document");

// Controller function for uploading documents
exports.uploadDoc = async (req, res) => {
  upload(req, res, async (err) => {
    // Handle global Multer errors
    if (err instanceof multer.MulterError) {
      return res.status(400).json({ message: `Multer error: ${err.message}` });
    } else if (err) {
      return res.status(400).json({ message: err.message });
    }

    // Check if a file was uploaded
    if (!req.file) {
      return res.status(400).json({ message: "No file uploaded!" });
    }

    // //check for malicious content
    // // Perform malware scanning
    // try {
    //   await scanFileForMaliciousContent(req.file);
    // } catch (scanErr) {
    //   // Remove the file if malicious content is detected
    //   fs.unlinkSync(req.file.path);
    //   return res.status(400).json({ message: scanErr.message });
    // }

    // Perform size check after the file upload
    const fileExtension = path
      .extname(req.file.originalname)
      .toLowerCase()
      .replace(".", "");
    const fileSizeLimit = fileSizeLimits[fileExtension];

    // Check if the uploaded file exceeds the defined size limit
    if (req.file.size > fileSizeLimit) {
      // Remove the file if it exceeds the limit
      fs.unlinkSync(req.file.path); // Optionally remove the file from the filesystem
      return res.status(400).json({
        message: `Error: ${fileExtension.toUpperCase()} files must be smaller than ${fileSizeLimit / (1024 * 1024)
          }MB`,
      });
    }

    // If size check passes, proceed with further logic
    try {
      const { doc_type_id } = req.body;
      const filename = req.file.filename;
      let docId = Number(req.body.doc_id);

      if (docId) {
        const existingDoc = await userDocs.findByPk(docId);
        if (existingDoc) {
          const directoryPath =
            path.resolve(__dirname, "..") + "/uploads/user/";
          fs.unlink(directoryPath + existingDoc.filename, async (unlinkErr) => {
            if (unlinkErr) throw unlinkErr;

            const userDoc = {
              user_id: req.user.id,
              doc_type_id: Number(doc_type_id),
              filename: filename,
              updatedAt: new Date(),
            };

            await userDocs.update(userDoc, { where: { id: docId } });
            return res
              .status(200)
              .json({ message: "File updated successfully!" });
          });
        } else {
          return res.status(404).json({ message: "Document not found!" });
        }
      } else {
        const newDoc = {
          user_id: req.user.id,
          doc_type_id: Number(doc_type_id),
          filename: filename,
          createdAt: new Date(),
          updatedAt: new Date(),
        };

        const createdDoc = await userDocs.create(newDoc);
        return res
          .status(200)
          .json({ message: "File uploaded successfully!", data: createdDoc });
      }
    } catch (error) {
      console.error("Error uploading document:", error);
      res.status(500).json({ message: "Failed to upload document." });
    }
  });
};


//upload Doc without the token. WITH id. MPGSS
// Controller function for uploading documents with ID
exports.uploadDocWithId = async (req, res) => {
  upload(req, res, async (err) => {
    // Handle global Multer errors
    if (err instanceof multer.MulterError) {
      return res.status(400).json({ message: `Multer error: ${err.message}` });
    } else if (err) {
      return res.status(400).json({ message: err.message });
    }

    // Check if a file was uploaded
    if (!req.file) {
      return res.status(400).json({ message: "No file uploaded!" });
    }

    // //check for malicious content
    // // Perform malware scanning
    // try {
    //   await scanFileForMaliciousContent(req.file);
    // } catch (scanErr) {
    //   // Remove the file if malicious content is detected
    //   fs.unlinkSync(req.file.path);
    //   return res.status(400).json({ message: scanErr.message });
    // }

    // Perform size check after the file upload
    const fileExtension = path
      .extname(req.file.originalname)
      .toLowerCase()
      .replace(".", "");
    const fileSizeLimit = fileSizeLimits[fileExtension];

    // Check if the uploaded file exceeds the defined size limit
    if (req.file.size > fileSizeLimit) {
      // Remove the file if it exceeds the limit
      fs.unlinkSync(req.file.path); // Optionally remove the file from the filesystem
      return res.status(400).json({
        message: `Error: ${fileExtension.toUpperCase()} files must be smaller than ${fileSizeLimit / (1024 * 1024)
          }MB`,
      });
    }

    // If size check passes, proceed with further logic
    try {
        const { doc_type_id } = req.body;
        const filename = req.file.filename;

        const directoryPath = path.resolve(__dirname, "..", "uploads/user");

        // Fetch existing doc
        const existingDoc = await userDocs.findOne({
          where: {
            user_id: req.body.user_id,
            doc_type_id: Number(doc_type_id),
          },
        });

        // Delete old file if exists
        if (existingDoc?.filename) {
          const oldFilePath = path.join(directoryPath, existingDoc.filename);
          if (fs.existsSync(oldFilePath)) {
            fs.unlinkSync(oldFilePath);
          }
        }

        const userDoc = {
          user_id: req.body.user_id,
          doc_type_id: Number(doc_type_id),
          filename,
          updatedAt: new Date(),
        };

        // if(req.body.user_type != "hoi"){        
          // Delete old DB records
          await userDocs.destroy({
            where: {
              user_id: req.body.user_id,
              doc_type_id: Number(doc_type_id),
            },
          });
        // }

        // Insert new record
        await userDocs.create(userDoc);
        
        //update the esigned status
        await User.update(
        {
          is_esigned: true,
        },
        {
          where: { id: req.body.user_id }
        }
      );

        return res.status(200).json({
          message: "File uploaded & updated successfully!",
        });

      } catch (error) {
        console.error("Error uploading document:", error);
        res.status(500).json({ message: "Failed to upload document." });
      }
  });
};

// Retrieve all UserDocs of a specific doc type id.
exports.findByDocTypeId = async (req, res) => {
  console.log(req.params.doc_type_id);

  const userId = req.user.id;

  const data = await userDocs.findAll({
    where: {
      user_id: userId,
      doc_type_id: req.params.doc_type_id,
    },
  });

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

// Retrieve all UserDocs from the database.
exports.findAll = async (req, res) => {
  console.log(req.params.id);

  const userId = req.user.id;
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
        doc_type_name: docTypeData ? docTypeData.name : null,
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

// Controller function to handle the request for file access
exports.getFile = async (req, res, next) => {
  const { filename } = req.params;
  const userId = req.user.id; // Assuming `req.user.id` is set by authentication middleware

  try {
    // Check if the file exists and belongs to the logged-in user
    const file = await userDocs.findOne({ where: { filename } });

    if (!file) {
      return res.status(404).send("File not found");
    }

    if (file.user_id !== userId) {
      return res.status(403).send("Access denied");
    }

    // Construct file path
    const filePath = path.join(__dirname, "..", "uploads", "user", filename);

    // Serve the file
    res.sendFile(filePath, (err) => {
      if (err) {
        console.error("Error serving file:", err);
        next(err);
      }
    });
  } catch (error) {
    console.error("Error accessing file:", error);
    res.status(500).send("Server error");
  }
};

// Controller function to handle the request for file access
exports.getFileNoToken = async (req, res, next) => {
  const { filename } = req.params;
  // const userId = req.user.id; // Assuming `req.user.id` is set by authentication middleware

  try {
    // Check if the file exists and belongs to the logged-in user
    const file = await userDocs.findOne({ where: { filename } });

    if (!file) {
      return res.status(404).send("File not found");
    }

    // if (file.user_id !== userId) {
    //   return res.status(403).send("Access denied");
    // }

    // Construct file path
    const filePath = path.join(__dirname, "..", "uploads", "user", filename);

    // Serve the file
    res.sendFile(filePath, (err) => {
      if (err) {
        console.error("Error serving file:", err);
        next(err);
      }
    });
  } catch (error) {
    console.error("Error accessing file:", error);
    res.status(500).send("Server error");
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
  const user_id = req.user.id;

  userDocs
    .findOne({
      where: {
        id: req.params.id,
        user_id: req.user.id,
      },
    })
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
          valid: true,
        });

        res
          .status(200)
          .json(success("Student Document fetched successfully!", docsData[0]));
      } else {
        res
          .status(400)
          .json(
            errorResponse({ message: "Document Not found", valid: false }, 400)
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

const STATIC_TOKEN = 'a8f3c1d7-5e4b-49f2-9b2e-6f1a3d0c7b5e';
// Retrieve all UserDocs from the database. (MPGSS)
exports.getUndertakingWithStaticToken = async (req, res) => {
  try {
    const authHeader = req.headers['authorization'];

    if (!authHeader) {
      return res.status(401).json(success("Authorization header missing!"));
    }

    const tokenParts = authHeader.split(' ');
    if (tokenParts.length !== 2 || tokenParts[0] !== 'Bearer') {
      return res.status(401).json(success("Invalid authorization format!"));
    }

    const token = tokenParts[1];
    if (token !== STATIC_TOKEN) {
      return res.status(403).json(success("Invalid Token!"));
    }

    const userId = req.body.user_id;
    if (!userId) {
      return res.status(400).json(errorResponse("user_id is required", 400));
    }

    // 🔹 Fetch only message column
    const messageData = await User.findOne({
      where: { id: userId },
      attributes: ['esign_message'],
      raw: true
    });

    const message = messageData?.esign_message || null;

    const data = await userDocs.findAll({
      where: {
        user_id: userId,
        doc_type_id: 22
      }
    });

    if (!data || data.length === 0) {
      if (message && message.toLowerCase() === "processing!") {
        return res.status(202).json({
          rs: "P",
          rc: "ER202",
          rd: "Processing",
          pd: "",
          em: message,
          message: "Request is still under processing"
        });
      }

      return res.status(203).json({
        rs: "F",
        rc: "ER203",
        rd: "Failure",
        pd: "",
        em: message,
        message: message
      });
    }

    // 🔹 Fetch doc type ONCE
    const docTypeData = await docType.findOne({
      where: { id: 22 }
    });

    const docsData = [];

    for (const userdoc of data) {
      const filePath =
        "https://" + req.get("host") + "/static/mpgss/user/" + userdoc.filename;

      docsData.push({
        id: userdoc.id,
        doc_type_id: userdoc.doc_type_id,
        doc_type_name: docTypeData ? docTypeData.name : null,
        filename: userdoc.filename,
        filepath: filePath,
        message: message
      });
    }

    return res
      .status(200)
      .json(success("User undertaking fetched successfully!", docsData));

  } catch (error) {
    console.error(error);
    return res.status(500).json(errorResponse("Server error", 500));
  }
};

// Controller function to handle the request for file access
exports.viewUndertakingWithStaticToken = async (req, res, next) => {
  const { filename } = req.params;
  try {

    const authHeader = req.headers['authorization'];

    if (!authHeader) {
      res
        .status(401)
        .json(success("Authorization header missing!"));
    }

    // 2. Extract the token from "Bearer <token>"
    const tokenParts = authHeader.split(' ');
    if (tokenParts.length !== 2 || tokenParts[0] !== 'Bearer') {
      res
        .status(401)
        .json(success("Invalid authorization format!"));
    }

    const token = tokenParts[1];

    // 3. Compare with your static token
    if (token !== STATIC_TOKEN) {
      res
        .status(403)
        .json(success("Invalid Token!"));
    }

    // Check if the file exists and belongs to the logged-in user
    const file = await userDocs.findOne({ where: { filename } });

    if (!file) {
      return res.status(404).send("File not found");
    }

    // if (file.user_id !== userId) {
    //   return res.status(403).send("Access denied");
    // }

    // Construct file path
    const filePath = path.join(__dirname, "..", "uploads", "user", filename);

    // Serve the file
    res.sendFile(filePath, (err) => {
      if (err) {
        console.error("Error serving file:", err);
        next(err);
      }
    });
  } catch (error) {
    console.error("Error accessing file:", error);
    res.status(500).send("Server error");
  }
};

// Delete a UserDocs with the specified id in the request
exports.deleteUndertaking = async (req, res) => {
  const user_id = req.body.user_id;
  console.log("user id:", req.body.user_id);
  // const transaction = await sequelize.transaction();

  try {
    // Delete the user document
    const num = await userDocs.destroy({
      where: { 
        doc_type_id: 22,
        user_id: req.body.user_id },
      // transaction,
    });

    await User.update(
      {
        is_esigned: false,
        esign_message: "Processing!"
      },
      {
        where: { id: req.body.user_id }
      }
    );

    // if (num === 1) {
      // Commit the transaction
      // await transaction.commit();

      return res.status(200).json(success("Student undertaking was deleted successfully!"));
    // } else {
    //   // Rollback the transaction if no document was deleted
    //   // await transaction.rollback();
    //   return res.status(400).json(errorResponse(`Cannot delete UserDocs. Maybe it was not found!`, 400));
    // }
  } catch (err) {
    // Rollback the transaction in case of an error
    // await transaction.rollback();
    return res.status(400).json(errorResponse(`Error: ${err.message}`, 400));
  }
};


// Delete a UserDocs with the specified id in the request
exports.delete = async (req, res) => {
  const user_id = req.user.id;
  const id = req.body.doc_id;

  const transaction = await sequelize.transaction();

  try {
    // Delete the user document
    const num = await userDocs.destroy({
      where: { id, user_id },
      transaction,
    });

    if (num === 1) {
      // Reset userdoc_id for associated StudentMarks
      const marks = await StudentMarks.findAll({ where: { userdoc_id: id }, transaction });
      for (const mark of marks) {
        mark.userdoc_id = 0;
        await mark.save({ transaction });
      }

      // Reset userdoc_id for associated StudentEnrollment
      const enrollments = await StudentEnrollment.findAll({ where: { userdoc_id: id }, transaction });
      for (const enrollment of enrollments) {
        enrollment.userdoc_id = 0;
        await enrollment.save({ transaction });
      }

      // Commit the transaction
      await transaction.commit();

      return res.status(200).json(success("Student Document was deleted successfully!", { marks, enrollments }));
    } else {
      // Rollback the transaction if no document was deleted
      await transaction.rollback();
      return res.status(400).json(errorResponse(`Cannot delete UserDocs with id=${id}. Maybe it was not found!`, 400));
    }
  } catch (err) {
    // Rollback the transaction in case of an error
    await transaction.rollback();
    return res.status(400).json(errorResponse(`Error: ${err.message}`, 400));
  }
};
// exports.delete = (req, res) => {
//   const user_id = req.user.id;
//   const id = req.body.doc_id;

//   userDocs
//     .destroy({
//       where: {
//         id: id,
//         user_id: user_id,
//       },
//     })
//     .then(async (num) => {
//       if (num == 1) {
//         await StudentMarks.findAll({
//           where: {
//             userdoc_id: req.body.doc_id,
//           }
//         }).then(async (marks) => {
//           res
//               .status(200)
//               .json(success("Student Documents was deleted successfully!", marks));
//           marks.userdoc_id = 0;
//           marks.save();

//           await StudentEnrollment.findAll({
//             where: {
//               userdoc_id: req.body.doc_id,
//             },
//           }).then((studentEnrollments) => {
//             studentEnrollments.userdoc_id = 0;
//             studentEnrollments.save();

//             res
//               .status(200)
//               .json(success("Student Documents was deleted successfully!"));
//           });
//         });
//       } else {
//         res
//           .status(400)
//           .json(
//             errorResponse(
//               ` Cannot delete UserDocs with id=${id}. Maybe Student Documents was not found!`,
//               400
//             )
//           );
//       }
//     })
//     .catch((err) => {
//       res
//         .status(400)
//         .json(
//           errorResponse(
//             err + ` Cannot delete Student Documents with id=${id}`,
//             400
//           )
//         );
//     });
// };

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
  await UserPersonalDetails.findOne({
    where: {
      user_id: req.user.id,
    },
  }).then(async (user) => {
    let fileName = "user_" + Date.now() + "." + "pdf";
    let jsondata = [];
    let pdfDoc = new PDFDocument();
    pdfDoc.pipe(fs.createWriteStream("D:/sso/uploads/user/" + fileName));
    pdfDoc.text(
      "UNDERTAKING \n \n  I, Mr./Miss." +
      user.firstname +
      " " +
      user.lastname +
      ", hereby, undertake that I have made myself aware of the terms and conditions" +
      "of the Goa Government Scheme for financial assistance for higher education/technical education under" +
      "SANT SOHIROBANATH AMBIYE DNYANVRUDDHI SHISHYAVRUTTI (BURSARY SCHEME) \n and I" +
      "promise to abide by them. I further state that the above information given herein is true to the best of my" +
      "knowledge and belief. I have not suppressed any relevant information in respect of my application. In the" +
      "event of any information furnished by me herein, is found to be false or incorrect and/or in the event of any" +
      "suppression of relevant/ necessary data proved against me, I have noted that I would be disqualified from the" +
      "scheme and the amount disbursed to me shall become repayable, immediately." +
      "I further declare that I am not availing any Financial Assistance from the Government under any other" +
      "scheme through the institution.\n \n \n " +
      "Dated: \n" +
      new Date() +
      "\n \n \n" +
      "Signature of the Applicant\n\n \n \n" +
      user.firstname +
      " " +
      user.lastname
    );
    pdfDoc.end();

    const query = `INSERT INTO public."UserDocs" ("user_id", "doc_type_id", "filename", "createdAt", "updatedAt") VALUES ($1, $2, $3, $4, $5) ;`;

    // Execute the raw query
    const response = await db.sequelize.query(query, {
      bind: [req.user.id, 22, fileName, new Date(), new Date()],
      type: db.Sequelize.QueryTypes.UPSERT,
    });

    if (response) {
      let userDoc = await userDocs.findOne({
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
          success(
            "Student Undertaking document created successfully!",
            jsondata
          )
        );
    }
  });
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
            let userDoc = userDocs.findOne({
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


//fetch all the signed undertakings
exports.getAllUndertakings = async (req, res) => {
  console.log("heyyy therer")
  try {
    const data = await userDocs.findAll({
      where: {
        doc_type_id: 22
      }
    });

    if (!data || data.length === 0) {
      res.status(400).json(errorResponse(` Some error occurred while fetching all UserDocs`, 400));
    }

    // 🔹 Fetch doc type ONCE
    const docTypeData = await docType.findOne({
      where: { id: 22 }
    });

    const docsData = [];

    for (const userdoc of data) {
      const filePath =
        "https://" + req.get("host") + "/static/mpgss/user/" + userdoc.filename;

      docsData.push({
        id: userdoc.id,
        doc_type_id: userdoc.doc_type_id,
        doc_type_name: docTypeData ? docTypeData.name : null,
        filename: userdoc.filename,
        filepath: filePath,
        created_time: new Date(userdoc.createdAt).toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' })
      });
    }

    return res
      .status(200)
      .json(success("All User undertakings fetched successfully!", docsData));

  } catch (error) {
    console.error(error);
    return res.status(500).json(errorResponse("Server error", 500));
  }
};

