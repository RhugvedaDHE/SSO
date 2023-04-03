'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Staff extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Staff.belongsTo(models.User, {
        foreignKey: 'user_id'
      }),
      Staff.belongsTo(models.EmploymentType, {
        foreignKey: 'employment_type_id'
      })
    }
  }
  Staff.init({
    user_id: DataTypes.INTEGER,
    employment_type_id: DataTypes.INTEGER,
    pan_number: DataTypes.STRING,
    joining_date: DataTypes.DATE,
    retirement_date: DataTypes.DATE,
    passport_no: DataTypes.STRING,
    emergency_contact_no: DataTypes.STRING,
    google_scholarship_id: DataTypes.STRING,
    father_husband_guardian_name: DataTypes.STRING,
    mother_toungue: DataTypes.STRING,
    office_email: DataTypes.STRING,
    employee_id: DataTypes.STRING,
    is_teaching:  {
      type: DataTypes.BOOLEAN,
      defaultValue: 0
    },
    is_active:  {
      type: DataTypes.BOOLEAN,
      defaultValue: 1
    }
  }, {
    sequelize,
    modelName: 'Staff',
  });
  return Staff;
};