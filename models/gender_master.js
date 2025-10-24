'use strict';
const { Model } = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class GenderMaster extends Model {
    static associate(models) {
      // define association here
    }
  }
  GenderMaster.init({
    gender_id: {
      type: DataTypes.INTEGER,
      primaryKey: true
    },
    gender_code: {
      type: DataTypes.STRING,
      allowNull: false
    },
    gender: {
      type: DataTypes.STRING,
      allowNull: false
    }
  }, {
    sequelize,
    modelName: 'GenderMaster',
    tableName: 'nic_gender',
    timestamps: false
  });
  return GenderMaster;
};