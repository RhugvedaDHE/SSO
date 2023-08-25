'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Service extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      Service.belongsToMany(models.Role,{
        through: "ServiceRole",
        as: "serviceid",
        foreignKey: "service_id"
      })
    }
  }
  Service.init({
    name: DataTypes.STRING,
    url: DataTypes.STRING,
    image_url: DataTypes.STRING,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: 1
    }
  }, {
    sequelize,
    modelName: 'Service',
  });
  return Service;
};