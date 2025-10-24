'use strict';
const { Model } = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class NICDistrict extends Model {
    static associate(models) {
      // define association here
    }
  }
  NICDistrict.init({
    dist_code: {
      type: DataTypes.INTEGER,
      primaryKey: true
    },
    dist_name: {
      type: DataTypes.STRING
    },
    dist_name1: {
      type: DataTypes.STRING
    },
    dist_code_eng: {
      type: DataTypes.STRING
    },
    district_census_code: {
      type: DataTypes.INTEGER
    },
    district_code_lgd_for_dbt_tribal: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    teams_district_code: {
      type: DataTypes.STRING,
      allowNull: true
    },
    teams_district_name: {
      type: DataTypes.STRING,
      allowNull: true
    },
    teams_district_name_hindi: {
      type: DataTypes.STRING,
      allowNull: true
    }
  }, {
    sequelize,
    modelName: 'NICDistrict',
    tableName: 'nic_district',
    timestamps: false
  });
  return NICDistrict;
};
