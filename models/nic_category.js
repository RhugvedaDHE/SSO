'use strict';
const { Model } = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class NICCATEGORY extends Model {
    static associate(models) {
      // define association here
    }
  }
  NICCATEGORY.init({
    category_no: {
      type: DataTypes.INTEGER,
      primaryKey: true
    },
    category_eng: {
      type: DataTypes.STRING,
      allowNull: false
    },
    category_hin: {
      type: DataTypes.STRING,
      allowNull: true
    },
    eligible_schemes: {
      type: DataTypes.STRING,
      allowNull: true
    }
  }, {
    sequelize,
    modelName: 'NICCATEGORY',
    tableName: 'nic_category',
    timestamps: false
  });
  return NICCATEGORY;
};