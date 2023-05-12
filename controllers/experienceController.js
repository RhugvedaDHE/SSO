const db = require("../models");
const { success, errorResponse, validation } = require("../responseApi");

const Experience = db.Experience;
const Op = db.Sequelize.Op;

// Create and Save a new Experience
exports.create = async (req, res) => {
    console.log("in controller experience");

    if (!req.body.case) {
      res.status(400).send({
        message: "Experience case can not be empty!"
      });
      return;
    }
  
    // Create a Experience
    const experience = {
      case: req.body.case,
      from: req.body.from,
      to: req.body.to,
      is_active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save Experience in the database
    Experience.create(experience)
      .then(data => {
        res.status(200).json(success("Experience details!", data));
      })
      .catch(err => {
        res.status(400).json(errorResponse(err+" Some error occurred while creating the Experience.", 400));
    });
};

// Retrieve all Experience from the database.
exports.findAll = (req, res) => {
  console.log(req.query.case);

  const name = req.query.case;
  var condition = name ? { case: { [Op.iLike]: `%${name}%` } } : null;

  Experience.findAll({ where: condition })
    .then(data => {
      res.status(200).json(success("Experience List!", data));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Some error occurred while retriving Modes.", 400));
    });
};

// Find a single Experience with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  Experience.findByPk(id)
    .then(data => {
      if (data) {
        res.status(200).json(success("Experience details!", data));
      } else {
        res.status(400).send({
          message: `Cannot find Experience with id=${id}.`
        });
      }
    })
    .catch(err => {
      res.status(400).send({
        message: "Error retrieving Experience with id=" + id
      });
    });
};

// Update a Experience by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  Experience.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Experience was updated successfully."));
       
      } else {
        res.status(400).json(errorResponse(`Cannot update Experience with id=${id}. Maybe Experience was not found or req.body is empty!`, 400));
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating Experience with id=" + id
      });
    });
};

// Delete a Experience with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  Experience.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Experience was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete Experience with id=${id}. Maybe Experience was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete Experience with id=" + id
      });
    });
};

// Delete all Experience from the database.
exports.deleteAll = (req, res) => {
    Experience.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} Experience were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all Experience."
      });
    });
};

// Find all active Experience
exports.findAllActive = (req, res) => {
    Experience.findAll({ where: { is_active: true } })
    .then(data => {
      res.status(200).json(success("Experiences retrived successfully.",data));
    })
    .catch(err => {
      res.status(400).send({
        message:
          err.message || "Some error occurred while retrieving Degrees."
      });
    });
};
