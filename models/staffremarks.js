'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class StaffRemarks extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      StaffRemarks.belongsTo(models.EntityUser, {
        foreignKey: 'entity_user_id'
    })
    }
  }
  StaffRemarks.init({
    entity_user_id: DataTypes.INTEGER,
    section: DataTypes.INTEGER,
    remarks: DataTypes.STRING,
    userrole_id: DataTypes.INTEGER,
    is_active:  {
      type: DataTypes.BOOLEAN,
      defaultValue: true
    }
  }, {
    sequelize,
    modelName: 'StaffRemarks',
  });
  return StaffRemarks;
};