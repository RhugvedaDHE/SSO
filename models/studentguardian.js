'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class StudentGuardian extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      StudentGuardian.belongsTo(models.GuardianType, {
        foreignKey: "guardian_type_id",
        as: "guardianTypeId",
      });

      StudentGuardian.belongsTo(models.StudentEnrollment, {
        foreignKey: "student_enrollment_id",
        as: "studentEnrollmentId",
      });
    }
  }

  StudentGuardian.init({
      guardian_type_id: {
        type: DataTypes.INTEGER
      },
      relation_with_user: {
        type: DataTypes.STRING
      },
      student_enrollment_id: {
        type: DataTypes.INTEGER
      },
      first_name: {
        type: DataTypes.STRING
      },
      last_name: {
        type: DataTypes.STRING
      },
      phone: {
        type: DataTypes.STRING
      },
      email: {
        type: DataTypes.STRING
      },
      aadhar_card_no: {
        type: DataTypes.STRING
      },
      occupation: {
        type: DataTypes.STRING
      },
      designation: {
        type: DataTypes.STRING
      },
      work_address: {
        type: DataTypes.STRING
      },
      annual_income: {
        type: DataTypes.DECIMAL
      },
      is_active: {
        type: DataTypes.BOOLEAN,
        defaultValue: 1
      },
      createdAt: {
        type: DataTypes.DATE
      },
      updatedAt: {
        type: DataTypes.DATE,
        allowNull: true,
      }
  }, {
    sequelize,
    modelName: 'StudentGuardian',
  });
  return StudentGuardian;
};