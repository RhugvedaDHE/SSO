const db = require("../models");
const OtherSkill = require('../models').StudentOtherSkill;
const StudentSkills = require('../models').StudentSkills;
const User = require('../models').User;
const Op = db.Sequelize.Op;
const { success, errorResponse, validation } = require("../responseApi");

// Create and Save a new Skill
exports.create = async (req, res) => {
  let deleted = [];
  let user =  await User.findOne({
    where:{
      "id": req.user.id
    }
  })
  if(user){
    deleted = OtherSkill.destroy({
      where: {
        user_id: req.user.id
      }
    }).catch((error) =>{
      res.status(400).json(errorResponse(error, 400));
    })
  }
  if(deleted)
  {
    for(const skill of req.body.skills){      
        let created = OtherSkill.create({
        user_id: req.user.id,
        name: skill,
      })
    }     
  } 
    res.status(200).json(success("Student other skills added successfully!"));  
};

// Retrieve all OtherSkill from the database.
exports.findAll = (req, res) => {
  console.log(req.query.name);

  const name = req.query.name;
  var condition = name ? { name: { [Op.iLike]: `%${name}%` }, user_id: req.user.id } : null;

  OtherSkill.findAll({ where: condition})
    .then(data => {
      res.status(200).json(success("OtherSkills fetched successfully!", data));
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving skill."
      });
    });
};

// Find a single OtherSkill with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  OtherSkill.findByPk(id)
    .then(data => {
      if (data) {
        res.send(data);
      } else {
        res.status(404).send({
          message: `Cannot find OtherSkill with id=${id}.`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving OtherSkill with id=" + id
      });
    });
};

// Update a OtherSkill by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  OtherSkill.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "OtherSkill was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update OtherSkill with id=${id}. Maybe OtherSkill was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating OtherSkill with id=" + id
      });
    });
};

// Delete a OtherSkill with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  OtherSkill.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "OtherSkill was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete OtherSkill with id=${id}. Maybe OtherSkill was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete OtherSkill with id=" + id
      });
    });
};

// Delete all OtherSkill from the database.
exports.deleteAll = (req, res) => {
    OtherSkill.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} OtherSkill were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all OtherSkill."
      });
    });
};

// Find all active OtherSkill
exports.findAllActive = (req, res) => {
  console.log("heyyyyyy");
    OtherSkill.findAll({
      attributes: ["id", "name", "type"],
       where: { active: true }, 
       group: ['id', 'type']
    })
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving skills."
      });
    });
};

//save student's skills
exports.addStudentSkills = async (req, res) => {
let deleted = [];
let user =  await User.findOne({
  where:{
    "id": req.user.id
  }
})
if(user){
  deleted = StudentSkills.destroy({
    where: {
      user_id: req.user.id
    }
  }).catch((error) =>{
    res.status(400).json(errorResponse(error, 400));
  })
}
if(deleted)
{
  for(const skill of req.body.skills){      
      let created = StudentSkills.create({
      user_id: req.user.id,
      skill_id: skill,
    })
  }     
} 
  console.log(user);
  user.is_complete = true;
  user.save();
  res.status(200).json(success("Student skills added successfully!"));  
};
