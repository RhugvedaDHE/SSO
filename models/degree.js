'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Degree extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      /*Degree.belongsToMany(models.Job, {
        foreignKey: "degree_id",
        as: "degreeid",
        through:'jobDegree'
      });*/
    }
  }
  Degree.init({
    name: DataTypes.STRING,
    is_active: DataTypes.BOOLEAN
  }, {
    sequelize,
    modelName: 'Degree',
  });
  return Degree;
};