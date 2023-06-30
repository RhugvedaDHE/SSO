'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class UserPersonalDetails extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      UserPersonalDetails.belongsTo(models.User, {
        foreignKey: 'user_id'
      })
      UserPersonalDetails.belongsTo(models.CasteCategory, {
        foreignKey: 'castcategory_id'
      })
      UserPersonalDetails.belongsTo(models.religion, {
        foreignKey: 'religion_id'
      })
    }
  }
  UserPersonalDetails.init({
    user_id: DataTypes.INTEGER,
    firstname: DataTypes.STRING,
    lastname: DataTypes.STRING,
    gender: DataTypes.STRING,
    email: DataTypes.STRING,
    phone: DataTypes.STRING,
    dob: DataTypes.DATE,
    aadhar: DataTypes.STRING,
    blood_group: DataTypes.STRING,
    nationality: DataTypes.STRING,
    photo: DataTypes.STRING,
    physically_disabled: DataTypes.BOOLEAN,
    castcategory_id: DataTypes.INTEGER,
    religion_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: 1
    },
  }, {
    sequelize,
    modelName: 'UserPersonalDetails',
  });
  return UserPersonalDetails;
};