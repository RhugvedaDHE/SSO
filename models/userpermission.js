'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class UserPermission extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      UserPermission.belongsTo(models.Role, {
        foreignKey: 'role_id'
      })

      UserPermission.belongsTo(models.Permission, {
        foreignKey: 'permission_id'
      })
    }
  }
  UserPermission.init({
    role_id: DataTypes.INTEGER,
    permission_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: true
    }
  }, {
    sequelize,
    modelName: 'UserPermission',
  });
  return UserPermission;
};