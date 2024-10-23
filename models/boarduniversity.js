'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Boarduniversity extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Boarduniversity.belongsTo(models.State, {
        foreignKey: 'state_id'
    })
    }
  }
  Boarduniversity.init({
    name: DataTypes.STRING,
    state_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: true
    }
  }, {
    sequelize,
    modelName: 'Boarduniversity',
  });
  return Boarduniversity;
};