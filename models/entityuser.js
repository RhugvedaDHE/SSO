'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class EntityUser extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      EntityUser.belongsTo(models.User, {
        foreignKey: 'user_id'
      })
      EntityUser.belongsTo(models.EntityType, {
        foreignKey: 'entity_type_id'
      })
    }
  }
  EntityUser.init({
    user_id: DataTypes.INTEGER,
    entity_type_id: DataTypes.INTEGER,
    cio_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: 1
    }
  }, {
    sequelize,
    modelName: 'EntityUser',
  });
  return EntityUser;
};