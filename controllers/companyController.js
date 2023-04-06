const jwt = require('jsonwebtoken');
require('dotenv').config();
const bcrypt = require('bcryptjs');
const db = require('../models');
//const uploadFile = require("../middleware/upload");

const Company = require('../models').Company;
//const Op = db.Sequelize.Op;

const { success, errorResponse, validation } = require("../responseApi");

exports.create = async (req, res) => {
  /*console.log("in controller company");
  console.log(req.body);

  if (!req.body.name) {
    res.status(400).send({
      message: "Name can not be empty!"
    });
    return;
  }

    User.create({
        username: req.body.username,
        password: "123456",
        phone: req.body.phone,
        email: req.body.email,
    })
    .then( (user) => { 
        // Create a Company
        const company = {
          organization_type_id:req.body.organization_type_id,
          owner_type_id:req.body.owner_type_id,
          user_id:user.id,
          name: req.body.name,
          //logo: req.body.logo,
          state_id:req.body.state_id,
          district_id:req.body.district_id,
          taluka_id:req.body.taluka_id,
          village_id:req.body.village_id,
          city_id:req.body.city_id,
          landmark:req.body.landmark,
          street:req.body.street,
          pincode:req.body.pincode,
          phone:req.body.phone,
          email:req.body.email,
          reg_no:req.body.reg_no,
          reg_certificate: "",//req.certificate.originalname,
          verified:req.body.verified ? req.body.verified : false,
          active: req.body.active ? req.body.active : true,
          updateAt:null
        };

        // Save Company in the database
        Company.create(company)
          .then(data => {
            
            //Fire mail 

            //return the response
            res.send(data);
          })
          .catch(err => {
            res.status(500).send({
              message:
                err.message || "Some error occurred while creating the Company."
            });
        });
    });*/
  
};


exports.findAll = async function (req, res){
  await Company.findAll({
      where: {
          active: true,
      }
  }).then(companies => {
      res.status(200).json(success("Companies fetched successfully!", companies))
  }).catch(error => {
      res.status(400).json(errorResponse(error, 400));
  })
}


exports.findOne = async function (req, res){
  await Company.findAll({
      where: {
          id: req.body.id,
      }
  }).then(companies => {
      res.status(200).json(success("Company Details!", companies))
  }).catch(error => {
      res.status(400).json(errorResponse(error, 400));
  })
}


// Find a single Company with an id


// Update a Company by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  Company.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Company was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update Company with id=${id}. Maybe Company was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating Company with id=" + id
      });
    });
};

// Delete a Company with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  Company.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Comapany was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete Comapany with id=${id}. Maybe Comapany was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete Comapany with id=" + id
      });
    });
};

// Delete all Company from the database.
exports.deleteAll = (req, res) => {
  Company.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} Company were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all companies."
      });
    });
};

// Find all active Company
exports.findAllActive = (req, res) => {
  Company.findAll({ where: { active: true } })
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving tutorials."
      });
    });
};

exports.userCompanies = (req, res) => {
  const ownerTypeId = req.body.ownerTypeId;
  const userId = req.body.userId;
  Company.findAll({ where: { OwnerTypeId: ownerTypeId, user_id: userId, active: true } })
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving tutorials."
      });
    });
};

// upload Company docs
/*
exports.upload = async (req,res) => {
    console.log("in controller company");

    const companyId = req.params.id;
    // Validate request
    
    try{
      
      if(req.file == undefined){
        return res.status(400).send({message:"Please upload a certificate!"});
      }
      else{
        await uploadFile(req, res);
      }

      if(req.companyLogo == undefined){
        return res.status(400).send({message:"Please upload a company logo!"});
      }
      else{
        await uploadFile(req, res);
      }
    }
    catch(err){
      console.log(req.file);
      res.status(500).send({
        message:`Could not upload the file: ${req.file}.${err}`,
      })
    }

    if (!req.body.name) {
      res.status(400).send({
        message: "Name can not be empty!"
      });
      return;
    }

    const companyData = {
      logo: req.body.logo,
    };

    Company.update(companyData, {
      where: { id: companyId }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Company was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Company with id=${companyId}. Maybe Company was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Company with id=" + companyId
        });
      });
};*/

