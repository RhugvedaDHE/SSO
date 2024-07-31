'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class StudentMarks extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      StudentMarks.belongsTo(models.StudentEnrollment, {
        foreignKey: "student_enrollment_id",
      });

      StudentMarks.belongsTo(models.EvalTypes, {
        foreignKey: "eval_type_id",
      });

      StudentMarks.belongsTo(models.Semester, {
        foreignKey: "semester_id",
      });

      StudentMarks.belongsTo(models.UserDocs, {
        foreignKey: "userdoc_id",
      });
    }
  }

  /*
  owner_type_id: {
        type: DataTypes.INTEGER
      },
  */
  StudentMarks.init({
    student_enrollment_id: {
        type: DataTypes.INTEGER
      },
      semester_id: {
        type: DataTypes.INTEGER
      },
      month_year: {
        type: DataTypes.STRING
      },
      eval_type_id: {
        type: DataTypes.INTEGER
      },
      total_marks: {
        type: DataTypes.INTEGER
      },
      marks_obtained: {
        type: DataTypes.INTEGER
      },
      grade_obtained: {
        type: DataTypes.STRING
      },
      last_qual_year: {
        type: DataTypes.BOOLEAN
      },
      userdoc_id: {
        type: DataTypes.INTEGER
      },
      active: {
        type: DataTypes.BOOLEAN
      },
      createdAt: {
        type: DataTypes.DATE
      },
      updatedAt: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      deletedAt: {
        type: DataTypes.DATE,
        allowNull: true,
      }
  }, {
    sequelize,
    modelName: 'StudentMarks',
  });
  return StudentMarks;
};
