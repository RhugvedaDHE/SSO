'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class CompanyRemarks extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  CompanyRemarks.init({
    entity_user_id: DataTypes.INTEGER,
    section: DataTypes.INTEGER,
    remarks: DataTypes.STRING,
    userrole_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: 1
    }
  }, {
    sequelize,
    modelName: 'CompanyRemarks',
  });
  return CompanyRemarks;
};