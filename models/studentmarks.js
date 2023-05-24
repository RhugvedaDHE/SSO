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
      /*StudentMarks.belongsTo(models.user, {
        foreignKey: "user_id",
        as: "userCompany",
      });

      StudentMarks.belongsTo(models.organizationType, {
        foreignKey: "organization_type_id",
        as: "companyOrganizationType",
      });*/
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
      program_id: {
        type: DataTypes.INTEGER
      },
      board_university: {
        type: DataTypes.STRING
      },
      institute_name: {
        type: DataTypes.STRING
      },
      programme_semester: {
        type: DataTypes.STRING
      },
      course: {
        type: DataTypes.STRING
      },
      subject: {
        type: DataTypes.STRING
      },
      year_of_passing: {
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
