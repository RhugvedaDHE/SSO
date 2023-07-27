'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class UserMenuItem extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      UserMenuItem.belongsTo(models.Role, {
        foreignKey: 'role_id'
      })
      UserMenuItem.belongsTo(models.MenuItem, {
        foreignKey: 'menuitem_id'
      })
    }
  }
  UserMenuItem.init({
    role_id: DataTypes.INTEGER,
    menuitem_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: true
    }
  }, {
    sequelize,
    modelName: 'UserMenuItem',
  });
  return UserMenuItem;
};