'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class OTP extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  OTP.init({
    otp_type: DataTypes.STRING,
    otp: DataTypes.STRING,
    attempts: DataTypes.INTEGER,
    verify_attempts: DataTypes.INTEGER,
    details: DataTypes.STRING,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: 1
    },
    time:{
      type: DataTypes.DATE, 
      defaultValue: DataTypes.NOW 
    },
    verify_attempts_time:{
      type: DataTypes.DATE, 
    }
  }, {
    sequelize,
    modelName: 'OTP',
  });
  return OTP;
};