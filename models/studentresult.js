'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class StudentResult extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      /*StudentResult.belongsTo(models.user, {
        foreignKey: "user_id",
        as: "userCompany",
      });

      StudentResult.belongsTo(models.organizationType, {
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
  StudentResult.init({
      student_enrollment_id: {
        type: DataTypes.INTEGER
      },
      institute_program_id: {
        type: DataTypes.INTEGER
      },
      eval_type_id: {
        type: DataTypes.INTEGER
      },
      total_marks: {
        type: DataTypes.INTEGER
      },
      total_marks_obtained: {
        type: DataTypes.INTEGER
      },
      grade_obtained: {
        type: DataTypes.STRING
      },
      month: {
        type: DataTypes.INTEGER
      },
      year: {
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
    modelName: 'StudentResult',
  });
  return StudentResult;
};
