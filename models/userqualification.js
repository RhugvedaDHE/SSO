'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class UserQualification extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      /*UserQualification.belongsTo(models.user, {
        foreignKey: "user_id",
        as: "userCompany",
      });

      UserQualification.belongsTo(models.organizationType, {
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
  UserQualification.init({
      user_id: {
        type: DataTypes.INTEGER
      },
      qualification_type_id: {
        type: DataTypes.INTEGER
      },
      year: {
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
    modelName: 'UserQualification',
  });
  return UserQualification;
};
