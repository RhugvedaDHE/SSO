'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Percentage extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      //Percentage.belongsTo(models.Job);
    }
  }
  Percentage.init({
    case: DataTypes.STRING,
    from_percentage: DataTypes.INTEGER,
    to_percentage: DataTypes.INTEGER,
    is_active: DataTypes.BOOLEAN
  }, {
    sequelize,
    modelName: 'Percentage',
  });
  return Percentage;
};