'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Constituency extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Constituency.belongsTo(models.District, {
          foreignKey: 'district_id'
      }),
      Constituency.belongsTo(models.State, {
        foreignKey: 'state_id'
    })
    }
  }
  Constituency.init({
    name: DataTypes.STRING,
    district_id: DataTypes.INTEGER,
    state_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: true
    }
  }, {
    sequelize,
    modelName: 'Constituency',
  });
  return Constituency;
};