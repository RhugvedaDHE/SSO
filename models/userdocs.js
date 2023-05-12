'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class UserDocs extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      /*UserDocs.belongsTo(models.user, {
        foreignKey: "user_id",
        as: "userCompany",
      });

      UserDocs.belongsTo(models.organizationType, {
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
  UserDocs.init({
      user_id: {
        type: DataTypes.INTEGER
      },
      doc_type_id: {
        type: DataTypes.INTEGER
      },
      filename: {
        type: DataTypes.STRING
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
    modelName: 'UserDocs',
  });
  return UserDocs;
};
