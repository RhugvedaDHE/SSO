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
        foreignKey: 'castecategory_id'
      })
      UserPersonalDetails.belongsTo(models.religion, {
        foreignKey: 'religion_id'
      })
      UserPersonalDetails.belongsTo(models.Gender, {
        foreignKey: 'gender'
      })
      UserPersonalDetails.belongsTo(models.BloodGroup, {
        foreignKey: 'blood_group'
      })
      UserPersonalDetails.belongsTo(models.Country, {
        foreignKey: 'nationality'
      })
    }
  }
  UserPersonalDetails.init({
    user_id: DataTypes.INTEGER,
    name_as_per_aadhar: DataTypes.STRING,
    firstname: DataTypes.STRING,
    lastname: DataTypes.STRING,
    gender: DataTypes.INTEGER,
    email: DataTypes.STRING,
    country_code: DataTypes.STRING,
    phone: DataTypes.STRING,
    dob: DataTypes.DATE,
    aadhar: DataTypes.STRING,
    blood_group: DataTypes.INTEGER,
    nationality: DataTypes.INTEGER,
    photo: DataTypes.STRING,
    physically_disabled: DataTypes.BOOLEAN,
    castecategory_id: DataTypes.INTEGER,
    religion_id: DataTypes.INTEGER,
    reg_no: DataTypes.INTEGER,
    phone_sec: DataTypes.INTEGER,
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