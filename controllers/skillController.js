const db = require("../models");
const Skill = require('../models').Skill;
const StudentSkills = require('../models').StudentSkills;
const User = require('../models').User;
const Op = db.Sequelize.Op;
const { success, errorResponse, validation } = require("../responseApi");

// Create and Save a new Skill
exports.create = async (req, res) => {
    if (!req.body.name) {
      res.status(400).send({
        message: "Skill name can not be empty!"
      });
      res.status(200).json(success("Skill created successfully!"));
    }
  
    // Create a Skill
    const skill = {
      name: req.body.name,
      active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save Skill in the database
    Skill.create(skill)
      .then(data => {
        res.status(200).json(success("Skills created successfully!"));
      })
      .catch(err => {
        res.status(500).send({
          message:
            err.message || "Some error occurred while creating the Skill."
        });
    });
};

// Retrieve all Skill from the database.
exports.findAll = (req, res) => {
  console.log(req.query.name);

  const name = req.query.name;
  var condition = name ? { name: { [Op.iLike]: `%${name}%` } } : null;

  Skill.findAll({ where: condition })
    .then(data => {
      res.status(200).json(success("Skills fetched successfully!", data));
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving degrees."
      });
    });
};

// Find a single Skill with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  Skill.findByPk(id)
    .then(data => {
      if (data) {
        res.send(data);
      } else {
        res.status(404).send({
          message: `Cannot find Skill with id=${id}.`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving Skill with id=" + id
      });
    });
};

// Update a Skill by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  Skill.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Skill was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update Skill with id=${id}. Maybe Skill was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating Skill with id=" + id
      });
    });
};

// Delete a Skill with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  Skill.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Skill was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete Skill with id=${id}. Maybe Skill was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete Skill with id=" + id
      });
    });
};

// Delete all Skill from the database.
exports.deleteAll = (req, res) => {
    Skill.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} Skill were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all Skill."
      });
    });
};

// Find all active Skill
exports.findAllActive = (req, res) => {
    Skill.findAll({ where: { active: true } })
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving Degrees."
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
