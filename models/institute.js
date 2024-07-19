'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Institute extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Institute.belongsTo(models.InstituteType, {
        foreignKey: 'institute_type_id'
      }),
      Institute.belongsTo(models.Taluka, {
        foreignKey: 'taluka_id'
      }),
      Institute.belongsTo(models.District, {
        foreignKey: 'district_id'
      }),
      Institute.belongsTo(models.State, {
        foreignKey: 'state_id'
      }),
      Institute.belongsTo(models.Country, {
        foreignKey: 'country_id'
      })
      Institute.belongsToMany(models.Programme,{
        through: "InstituteProgramme",
        as: "instituteId",
        foreignKey: "institute_id"
      })
    }
  }
  Institute.init({
    institute_type_id: DataTypes.INTEGER,
    code: DataTypes.STRING,
    name: DataTypes.STRING,
    type: DataTypes.STRING,
    address: DataTypes.STRING,
    taluka_id: DataTypes.INTEGER,
    district_id: DataTypes.INTEGER,
    state_id: DataTypes.INTEGER,
    country_id: DataTypes.INTEGER,
    pincode: DataTypes.STRING,
    hoi_id: DataTypes.INTEGER,
    contact_person_name: DataTypes.STRING,
    contact_person_email: DataTypes.STRING,
    mobile: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: true
    }
  }, {
    sequelize,
    modelName: 'Institute',
  });
  return Institute;
};