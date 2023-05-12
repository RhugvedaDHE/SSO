'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class StudentRemarks extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      /*StudentRemarks.belongsTo(models.user, {
        foreignKey: "user_id",
        as: "userCompany",
      });

      StudentRemarks.belongsTo(models.organizationType, {
        foreignKey: "organization_type_id",
        as: "companyOrganizationType",
      });*/
    }
  }

  StudentRemarks.init({
      student_enrollment_id: {
        type: DataTypes.INTEGER
      },
      section: {
        type: DataTypes.INTEGER
      },
      remarks: {
        type: DataTypes.STRING
      },
      owner_id:{
        type: DataTypes.INTEGER
      },
      owner_type_id:{
        type: DataTypes.INTEGER
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
    modelName: 'StudentRemarks',
  });
  return StudentRemarks;
};
