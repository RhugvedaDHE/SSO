'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class ProgrammeSemester extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      /*ProgrammeSemester.belongsTo(models.user, {
        foreignKey: "user_id",
        as: "userCompany",
      });

      ProgrammeSemester.belongsTo(models.organizationType, {
        foreignKey: "organization_type_id",
        as: "companyOrganizationType",
      });*/
    }
  }

  ProgrammeSemester.init({
      program_id: {
        type: DataTypes.INTEGER
      },
      semester_id: {
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
    modelName: 'ProgrammeSemester',
  });
  return ProgrammeSemester;
};
