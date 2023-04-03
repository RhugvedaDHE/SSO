'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class InstituteStaff extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      InstituteStaff.belongsTo(models.Institute, {
        foreignKey: 'institute_id'
      }),
      InstituteStaff.belongsTo(models.Staff, {
        foreignKey: 'staff_id'
      }),
      InstituteStaff.belongsTo(models.Role, {
        foreignKey: 'role_id'
      }),
      InstituteStaff.belongsTo(models.InstituteType, {
        foreignKey: 'institute_type_id'
      })
    }
  }
  InstituteStaff.init({
    institute_id: DataTypes.INTEGER,
    staff_id: DataTypes.INTEGER,
    role_id: DataTypes.INTEGER,
    institute_type_id: DataTypes.INTEGER,
    current_sem: DataTypes.STRING,
    year: DataTypes.STRING,
    from_date: DataTypes.DATE,
    to_date: DataTypes.DATE,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: 1
    }
  }, {
    sequelize,
    modelName: 'InstituteStaff',
  });
  return InstituteStaff;
};