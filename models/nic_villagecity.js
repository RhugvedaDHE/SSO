'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class NICVillageCity extends Model {
    /**
     * Helper method for defining associations.
     */
    static associate(models) {
      // define association here if needed
    }
  }

  NICVillageCity.init({
    sr: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    village_code: {
      type: DataTypes.BIGINT,
      allowNull: false,
      unique: true
    },
    village_name: {
      type: DataTypes.STRING,
      allowNull: false
    },
    assembly_code: {
      type: DataTypes.STRING,
      allowNull: true
    },
    assembly_name: {
      type: DataTypes.STRING,
      allowNull: true
    },
    taluka_code: {
      type: DataTypes.STRING,
      allowNull: true
    },
    taluka_name: {
      type: DataTypes.STRING,
      allowNull: true
    },
    district_code: {
      type: DataTypes.STRING,
      allowNull: true
    },
    district_name: {
      type: DataTypes.STRING,
      allowNull: true
    }
  }, {
    sequelize,
    modelName: 'NICVillageCity',
    tableName: 'nic_village_city',
    timestamps: false // if you're not using createdAt / updatedAt
  });

  return NICVillageCity;
};