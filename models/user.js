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
      defaultValue: 0
    },
    email_verified: {
      type:DataTypes.BOOLEAN,
      defaultValue: 0
    },    
    is_verified: {
      type:DataTypes.BOOLEAN,
      defaultValue: 0
    },
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: 1
    },
    is_complete: {
      type: DataTypes.BOOLEAN,
      defaultValue: 0
    },
    is_deleted: {
      type:DataTypes.BOOLEAN,
      defaultValue: 0
    }
  }, {
    sequelize,
    modelName: 'User',
  });
  return User;
};