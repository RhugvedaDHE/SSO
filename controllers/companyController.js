const jwt = require("jsonwebtoken");
require("dotenv").config();

const bcrypt = require("bcryptjs");
const db = require("../models");
//const uploadFile = require("../middleware/upload");
const Company = require("../models").Company;
const Institute = require("../models").Institute;
const Department = require("../models").Department;
const Service = require("../models").Service;
const UserPersonalDetails = require("../models").UserPersonalDetails;
const User = require("../models").User;
const State = require("../models").State;
const District = require("../models").District;
const Country = require("../models").Country;
const City = require("../models").City;
const UserRole = require("../models").UserRole;
const Role = require("../models").Role;
const EntityUser = require("../models").EntityUser;

const logoPath = "http://" + "192.168.0.121:3000" + "/static/company/logo/";

var multer = require("multer");
//const uploadFile = require("../middlewares/upload");
const path = require("path");

const { success, errorResponse, validation } = require("../responseApi");

// upload Company docs
exports.uploadLogo = async (req, res) => {
  console.log("in controller company - upload logo");

  var storage = multer.diskStorage({
    destination: function (request, file, callback) {
      callback(null, "./uploads/company/logo");
    },
    filename: function (request, file, callback) {
      var temp_file_arr = file.originalname.split(".");

      var temp_file_name = temp_file_arr[0];

      var temp_file_extension = temp_file_arr[1];

      callback(
        null,
        "logo_" +
          req.body.company_id +
          "_" +
          Date.now() +
          "." +
          temp_file_extension
      );
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
  }).single("companyLogo");

  upload(req, res, function (error) {
    if (error) {
      res.send("Error Uploading File");
    } else {
      //request.flash('success', request.file.filename);
      const companyData = {
        logo: req.file.filename,
      };

      Company.update(companyData, {
        where: { id: req.body.company_id },
      }).then((num) => {
        if (num == 1) {
          res.send({
            message: "Company Logo updated successfully.",
          });
        } else {
          res.send({
            message: `Cannot update Company with id=${req.body.company_id}. Maybe Company was not found or req.body is empty!`,
          });
        }
      });

      //response.redirect("/fileupload");

      //res.send('File is uploaded successfully '+req.file.filename);
    }
  });
};

// upload Company docs
exports.uploadCertificate = async (req, res) => {
  console.log("in controller company - upload certificate");

  var storage = multer.diskStorage({
    destination: function (request, file, callback) {
      callback(null, "./uploads/company/certificate");
    },
    filename: function (request, file, callback) {
      var temp_file_arr = file.originalname.split(".");

      var temp_file_name = temp_file_arr[0];

      var temp_file_extension = temp_file_arr[1];

      callback(
        null,
        "cert_" +
          req.body.company_id +
          "_" +
          Date.now() +
          "." +
          temp_file_extension
      );
    },
  });

  const maxSize = 307200; //30kb
  var upload = multer({
    storage: storage,
    fileFilter: function (req, file, callback) {
      var ext = path.extname(file.originalname);
      /*if(ext !== '.png' && ext !== '.jpg' && ext !== '.gif' && ext !== '.jpeg') {
                              return callback(new Error('Only images are allowed'))
                          }
                          callback(null, true);*/

      if (file.mimetype === "application/pdf") {
        // check file type to be png, jpeg, or jpg
        callback(null, true);
      } else {
        callback(null, false); // else fails
      }
    },
    limits: { fileSize: maxSize },
  }).single("certificate");

  upload(req, res, function (error) {
    if (error) {
      res.send("Error Uploading File: " + error);
    } else {
      //request.flash('success', request.file.filename);
      const companyData = {
        reg_certificate: req.file.filename,
      };

      Company.update(companyData, {
        where: { id: req.body.company_id },
      }).then((num) => {
        if (num == 1) {
          res.send({
            message: "Company certificate updated successfully.",
          });
        } else {
          res.send({
            message: `Cannot update Company with id=${req.body.company_id}. Maybe Company was not found or req.body is empty!`,
          });
        }
      });

      //response.redirect("/fileupload");

      //res.send('File is uploaded successfully '+req.file.filename);
    }
  });
};

exports.create = async (req, res) => {
  console.log("in controller company");
  console.log(req.body);

  if (!req.body.name) {
    res.status(400).send({
      message: "Name can not be empty!",
    });
    return;
  }

  User.create({
    username: req.body.username,
    password: "123456",
    phone: req.body.phone,
    email: req.body.email,
  }).then((user) => {
    // Create a Company
    const company = {
      organization_type_id: req.body.organization_type_id,
      owner_type_id: req.body.owner_type_id,
      user_id: user.id,
      name: req.body.name,
      //logo: req.body.logo,
      country_id: req.body.country_id,
      state_id: req.body.state_id,
      district_id: req.body.district_id,
      taluka_id: req.body.taluka_id,
      village_id: req.body.village_id,
      city_id: req.body.city_id,
      landmark: req.body.landmark,
      street: req.body.street,
      pincode: req.body.pincode,
      phone: req.body.phone,
      email: req.body.email,
      reg_no: req.body.reg_no,
      reg_certificate: "", //req.certificate.originalname,
      verified: req.body.verified ? req.body.verified : false,
      active: req.body.active ? req.body.active : true,
      updateAt: null,
    };

    // Save Company in the database
    Company.create(company)
      .then((data) => {
        //Fire mail

        //return the response
        res.send(data);
      })
      .catch((err) => {
        res.status(500).send({
          message:
            err.message || "Some error occurred while creating the Company.",
        });
      });
  });
};

exports.createCompanyDHE = async (req, res) => {
  console.log("in controller company");
  console.log(req.body);

  if (!req.body.name) {
    res.status(400).send({
      message: "Comapny name cannot be empty!",
    });
    return;
  }

  // Create a Company
  const company = {
    organization_type_id: req.body.organization_type_id,
    user_id: req.body.user_id,
    name: req.body.name,
    description: req.body.description,
    //logo: req.body.logo,
    country_id: req.body.country_id,
    state_id: req.body.state_id,
    district_id: req.body.district_id,
    taluka_id: req.body.taluka_id,
    village: req.body.village,
    landmark: req.body.landmark,
    street: req.body.street,
    pincode: req.body.pincode,
    phone: req.body.phone,
    email: req.body.email,
    website: req.body.website,
    reg_no: req.body.reg_no,
    verified: true,
    active: req.body.active ? req.body.active : true,
    updateAt: null,
  };

  // Save Company in the database
  Company.create(company)
    .then((data) => {
      //Fire mail

      //return the response
      res.status(200).json(success("Company created successfully!", data));
    })
    .catch((err) => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Company.",
      });
    });
};

exports.findAll = async function (req, res) {
  await Company.findAll({
    where: {
      active: true,
    },
  })
    .then((companies) => {
      res
        .status(200)
        .json(success("Companies fetched successfully!", companies));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.findOne = async function (req, res) {
  console.log("heyyy thhheeerrrreeee!!!!!!");
  var jsondata = [];
  let userPersonalDetails = await UserPersonalDetails.findOne({
    where: {
      user_id: req.user.id,
    },
  });
  let userRole = await UserRole.findOne({
    where: {
      user_id: req.user.id,
    },
    include: [
      {
        model: Role,
        attributes: ["id", "name"],
      },
    ],
  });
  let entityUser = await EntityUser.findOne({
    where: {
      user_id: req.user.id,
    },
  });

  await Company.findAll({
    where: {
      id: entityUser.cio_id,
    },
    include: [
      {
        model: City,
        attributes: ["name"],
      },
      {
        model: State,
        attributes: ["name"],
      },
      {
        model: District,
        attributes: ["name"],
      },
      {
        model: Country,
        attributes: ["name"],
      },
      {
        model: User,
        attributes: ["username"],
      },
    ],
  })
    .then((companies) => {
      jsondata.push({
        company: companies,
        companyPersonalDetails: userPersonalDetails,
        Role: userRole,
      });
      res
        .status(200)
        .json(success("Company Details fetched successfully!", jsondata));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

// Find a single Company with an id

// Update a Company by the id in the request
exports.update = (req, res) => {
  const id = req.user.id;
  console.log(req.body);

  Company.update(req.body, {
    where: { user_id: id },
  })
    .then((num) => {
      if (num == 1) {
        //update user personal details
        let userPersonalData = {
          firstname: req.body.firstname,
          lastname: req.body.lastname,
        };

        UserPersonalDetails.update(userPersonalData, {
          where: { id: id },
        });

        User.update({
          is_verified: false,
          status: "RESUB"
        }, {
          where:{
            id: id,
          }
        })
        res
        .status(200)
        .json(success("Company updated successfully!"));
      } else {
        res.status(400).json(errorResponse("Could not update a company", 400));
      }
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 500));
    });
};

// Delete a Company with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  Company.destroy({
    where: { id: id },
  })
    .then((num) => {
      if (num == 1) {
        res.send({
          message: "Comapany was deleted successfully!",
        });
      } else {
        res.send({
          message: `Cannot delete Comapany with id=${id}. Maybe Comapany was not found!`,
        });
      }
    })
    .catch((err) => {
      res.status(500).send({
        message: "Could not delete Comapany with id=" + id,
      });
    });
};

// Delete all Company from the database.
exports.deleteAll = (req, res) => {
  Company.destroy({
    where: {},
    truncate: false,
  })
    .then((nums) => {
      res.send({ message: `${nums} Company were deleted successfully!` });
    })
    .catch((err) => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all companies.",
      });
    });
};

exports.userCompanies = async (req, res) => {
  //const ownerTypeId = req.body.ownerTypeId;
  const userId = req.params.id;

  let query = `SELECT c.*,s.name as state_name, d.name as district_name, o.name as country_name, y.name as city_name`;
  query += ` FROM public."Companies" as c `;
  query += ` LEFT JOIN public."States" as s ON s."id" = c.state_id`;
  query += ` LEFT JOIN public."Districts" as d ON d."id" = c.district_id`;
  query += ` LEFT JOIN public."Countries" as o ON o."id" = c.country_id`;
  query += ` LEFT JOIN public."Cities" as y ON y."id" = c.taluka_id`;
  query += ` WHERE c."user_id" = ${userId}`;
  query += ` ORDER BY c.id DESC`;

  const result = await db.sequelize.query(query, {
    type: db.Sequelize.QueryTypes.SELECT,
  });

  let outArray = [];
  if (result) {
    for (const c of result) {
      const filePath = logoPath + c.logo;

      outArray.push({
        id: c.id,
        organization_type_id: c.organization_type_id,
        user_id: c.user_id,
        name: c.name,
        logo: filePath,
        state_id: c.state_id,
        district_id: c.district_id,
        taluka_id: c.taluka_id,
        country_id: c.country_id,
        landmark: c.landmark,
        street: c.street,
        pincode: c.pincode,
        phone: c.phone,
        reg_no: c.reg_no,
        reg_certificate: c.reg_certificate,
        email: c.email,
        verified: c.verified,
        active: c.active,
        createdAt: c.createdAt,
        updatedAt: c.updatedAt,
        deletedAt: c.deletedAt,
        village: c.village,
        description: c.description,
        website: c.website,
        state_name: c.state_name,
        district_name: c.district_name,
        country_name: c.country_name,
        city_name: c.city_name,
      });
    }

    return res
      .status(200)
      .json(success("Jobs fetched successfully!", outArray));
  } else {
    return res.status(400).json(errorResponse(error, 400));
  }
  /*Company.findAll({
    where: { user_id: userId, active: true },
  })
    .then((data) => {
      return res
        .status(200)
        .json(success("Companies fetched successfully!", data));
    })
    .catch((err) => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving tutorials.",
      });
    });*/
};

exports.listCompanies = (req, res) => {
  let where = {};
  var companies = [];
  if (req.params.type == "verified") {
    where = { is_verified: true, status: "VER" };
  } else if (req.params.type == "not-verified"){
    where = { is_verified: false, status: "REG" };
  }
  Company.findAll({
    where: { active: true },
    include: [
      {
        model: User,
        where: {
          is_verified: true,
          status: "VER",
        },
        attributes: ["id", "status", "verified_by"],
        where: where
      },
    ],
  })
    .then(async (data) => {
      

     
   
      for (d of data){
      
        let ur = await UserRole.findOne({
          where: {
            id: d.User.verified_by
          },
          include: [
            {
              model: Role
            }
          ]
        });
       
        queryOptions = {
          where: {
            user_id: ur.user_id,
          },
          attributes: ["cio_id"],
        };
        
        if (ur.Role.type == "dept") {
          queryOptions.include = [Department];
        } else if (ur.Role.type == "company") {
          queryOptions.include = [Company];
        } else if (
          ur.Role.type == "institute" &&
          ur.Role.name != "Student"
        ) {
          console.log("herereferfrdfevtvetvdtv")
          queryOptions.include = [Institute];
        } else if (ur.Role.type == "service") {
          queryOptions.include = [Service];
        }

        console.log("qurtyoprions", queryOptions)
        let cio_ur = await EntityUser.findOne(queryOptions);
       
        let cio_name_ur =
          ur.Role.type == "dept"
            ? cio_ur.Department.name
            : ur.Role.type == "company"
            ? cio_ur.Company.name
            : ur.Role.type == "institute" && ur.Role.name != "Student"
            ? cio_ur.Institute.name
            : ur.Role.type == "service"
            ? cio_ur.Service.name
            : null;
        
        companies.push({
          company: d,          
          verified_by: {
            role_type: ur.Role.type,
            cio_name: cio_name_ur
          }
        })
      }
      res
        .status(200)
        .json(success("Company Details fetched successfully!", companies));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.getCompanyDetailsById = async function (req, res) {
  console.log("heyyy thhheeerrrreeee!!!!!!");
  var jsondata = [];
  let userPersonalDetails = await UserPersonalDetails.findOne({
    where: {
      user_id: req.params.user_id,
    },
  });
  let userRole = await UserRole.findOne({
    where: {
      user_id: req.params.user_id,
    },
    include: [
      {
        model: Role,
        attributes: ["id", "name"],
      },
    ],
  });
  let entityUser = await EntityUser.findOne({
    where: {
      user_id: req.params.user_id,
    },
  });

  await Company.findAll({
    where: {
      id: entityUser.cio_id,
    },
    include: [
      {
        model: City,
        attributes: ["name"],
      },
      {
        model: State,
        attributes: ["name"],
      },
      {
        model: District,
        attributes: ["name"],
      },
      {
        model: Country,
        attributes: ["name"],
      },
      {
        model: User,
        attributes: ["username"],
      },
    ],
  })
    .then((companies) => {
      jsondata.push({
        company: companies,
        companyPersonalDetails: userPersonalDetails,
        Role: userRole,
      });
      res
        .status(200)
        .json(success("Company Details fetched successfully!", jsondata));
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

// Find all active Company
exports.findAllActive = (req, res) => {
  Company.findAll({ where: { active: true } })
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving tutorials.",
      });
    });
};

/*
 * Get company details for DHE admin
 * Note: As per Rhugveda taluka is considered as city
 */
exports.getCompanyDetails = async function (req, res) {
  const companyId = req.params.id;

  let query = `SELECT c.*,s.name as state_name, d.name as district_name, o.name as country_name, y.name as city_name`;
  query += ` FROM public."Companies" as c `;
  query += ` LEFT JOIN public."States" as s ON s."id" = c.state_id`;
  query += ` LEFT JOIN public."Districts" as d ON d."id" = c.district_id`;
  query += ` LEFT JOIN public."Countries" as o ON o."id" = c.country_id`;
  query += ` LEFT JOIN public."Cities" as y ON y."id" = c.taluka_id`;
  query += ` WHERE c."id" = ${companyId}`;
  query += ` LIMIT 1`;

  const result = await db.sequelize.query(query, {
    type: db.Sequelize.QueryTypes.SELECT,
  });

  let outArray = [];
  if (result) {
    for (const c of result) {
      const filePath = logoPath + c.logo;

      outArray.push({
        id: c.id,
        organization_type_id: c.organization_type_id,
        user_id: c.user_id,
        name: c.name,
        logo: filePath,
        state_id: c.state_id,
        district_id: c.district_id,
        taluka_id: c.taluka_id,
        country_id: c.country_id,
        landmark: c.landmark,
        street: c.street,
        pincode: c.pincode,
        phone: c.phone,
        reg_no: c.reg_no,
        reg_certificate: c.reg_certificate,
        email: c.email,
        verified: c.verified,
        active: c.active,
        createdAt: c.createdAt,
        updatedAt: c.updatedAt,
        deletedAt: c.deletedAt,
        village: c.village,
        description: c.description,
        website: c.website,
        state_name: c.state_name,
        district_name: c.district_name,
        country_name: c.country_name,
        city_name: c.city_name,
      });
    }

    return res
      .status(200)
      .json(success("Jobs fetched successfully!", outArray[0]));
  } else {
    return res.status(400).json(errorResponse(error, 400));
  }
};
