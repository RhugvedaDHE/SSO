const db = require("../models");
const { success, errorResponse, validation } = require("../responseApi");

const Mode = db.mode;
const Op = db.Sequelize.Op;

// Create and Save a new Mode
exports.create = async (req, res) => {
    console.log("in controller mode");

    if (!req.body.type) {
      res.status(400).send({
        message: "Mode type can not be empty!"
      });
      return;
    }
  
    // Create a Mode
    const mode = {
      type: req.body.type,
      active: req.body.active ? req.body.active : true,
      updateAt:null
    };

    // Save Mode in the database
    Mode.create(mode)
      .then(data => {
        res.status(200).json(success("Mode details!", data));
      })
      .catch(err => {
        res.status(400).json(errorResponse(err+" Some error occurred while creating the Mode.", 400));
    });
};

// Retrieve all Mode from the database.
exports.findAll = (req, res) => {
  console.log(req.query.type);

  const name = req.query.type;
  var condition = name ? { type: { [Op.iLike]: `%${name}%` } } : null;

  Mode.findAll({ where: condition })
    .then(data => {
      res.status(200).json(success("Mode details!", data));
    })
    .catch(err => {
      res.status(400).json(errorResponse(err+" Some error occurred while retriving Modes.", 400));
    });
};

// Find a single Mode with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  Mode.findByPk(id)
    .then(data => {
      if (data) {
        res.status(200).json(success("Mode details!", data));
      } else {
        res.status(400).send({
          message: `Cannot find Mode with id=${id}.`
        });
      }
    })
    .catch(err => {
      res.status(400).send({
        message: "Error retrieving Mode with id=" + id
      });
    });
};

// Update a Mode by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  Mode.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.status(200).json(success("Mode was updated successfully."));
       
      } else {
        res.status(400).json(errorResponse(`Cannot update Mode with id=${id}. Maybe Mode was not found or req.body is empty!`, 400));
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating Mode with id=" + id
      });
    });
};

// Delete a Mode with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  Mode.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Mode was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete Mode with id=${id}. Maybe Mode was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete Mode with id=" + id
      });
    });
};

// Delete all Mode from the database.
exports.deleteAll = (req, res) => {
    Mode.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} Mode were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all Mode."
      });
    });
};

// Find all active Mode
exports.findAllActive = (req, res) => {
    Mode.findAll({ where: { active: true } })
    .then(data => {
      res.status(200).json(success("Modes retrived successfully.",data));
    })
    .catch(err => {
      res.status(400).send({
        message:
          err.message || "Some error occurred while retrieving Degrees."
      });
    });
};
