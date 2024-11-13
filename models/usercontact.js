'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class UserContact extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      UserContact.belongsTo(models.User, {
        foreignKey: 'user_id'
      }),
      UserContact.belongsTo(models.Country, {
        foreignKey: 'country_id'
      }),
      UserContact.belongsTo(models.State, {
        foreignKey: 'state_id'
      }),
      UserContact.belongsTo(models.District, {
        foreignKey: 'district_id'
      }),
      UserContact.belongsTo(models.Taluka, {
        foreignKey: 'taluka_id'
      }),
      UserContact.belongsTo(models.Constituency, {
        foreignKey: 'constituency_id'
      })
    }
  }
  UserContact.init({
    user_id: DataTypes.INTEGER,
    type_id: DataTypes.INTEGER,
    address: DataTypes.STRING,
    country_id: DataTypes.INTEGER,
    state_id: DataTypes.INTEGER,
    district_id: DataTypes.INTEGER,
    taluka_id: DataTypes.INTEGER,
    constituency_id: DataTypes.INTEGER,
    village: DataTypes.STRING,
    pincode: DataTypes.STRING,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: 1
    }
  }, {
    sequelize,
    modelName: 'UserContact',
  });
  return UserContact;
};