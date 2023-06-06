'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class User extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  User.init({
    uid: DataTypes.STRING,
    username: DataTypes.STRING,
    password: DataTypes.STRING,
    phone: DataTypes.STRING,
    email: DataTypes.STRING,
    phone_verified: {
      type:DataTypes.BOOLEAN,
      defaultValue: false
    },
    email_verified: {
      type:DataTypes.BOOLEAN,
      defaultValue: false
    },    
    is_verified: {
      type:DataTypes.BOOLEAN,
      defaultValue: false
    },
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: true
    },
    is_signed: {
      type: DataTypes.BOOLEAN,
      defaultValue: false
    },
    is_deleted: {
      type:DataTypes.BOOLEAN,
      defaultValue: false
    },
    status: DataTypes.STRING,
  }, {
    sequelize,
    modelName: 'User',
  });
  return User;
};