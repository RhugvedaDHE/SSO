'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Dummy extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Dummy.init({
    name: DataTypes.STRING,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: 1
    }
  }, {
    sequelize,
    modelName: 'Dummy',
  });
  return Dummy;
};