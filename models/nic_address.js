'use strict';
const { Model } = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class NICAddress extends Model {
    static associate(models) {
      // define association here
    }
  }
  NICAddress.init({
    row_id: {
      type: DataTypes.INTEGER,
      primaryKey: true
    },
    district_id: {
      type: DataTypes.STRING
    },
    district_name: {
      type: DataTypes.STRING
    },
    taluka_id: {
      type: DataTypes.STRING
    },
    taluka_name: {
      type: DataTypes.STRING
    },
    assembly_id: {
      type: DataTypes.STRING
    },
    assembly_name: {
      type: DataTypes.STRING
    }
  }, {
    sequelize,
    modelName: 'NICAddress',
    tableName: 'nic_address',
    timestamps: false
  });
  return NICAddress;
};