'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Taluka extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Taluka.belongsTo(models.District, {
        foreignKey: 'district_id'
    })
    }
  }
  Taluka.init({
    name: DataTypes.STRING,
    district_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: 1
    }
  }, {
    sequelize,
    modelName: 'Taluka',
  });
  return Taluka;
};