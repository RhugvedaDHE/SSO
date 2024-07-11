'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class UserBank extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  UserBank.init({
    name: DataTypes.STRING,
    account_number: DataTypes.INTEGER,
    branch: DataTypes.STRING,
    ifsc_code: DataTypes.STRING,    
    bank_address: DataTypes.STRING,    
    user_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: true
    }
  }, {
    sequelize,
    modelName: 'UserBank',
  });
  return UserBank;
};