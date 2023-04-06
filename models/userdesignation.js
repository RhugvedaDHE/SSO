'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class UserDesignation extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      
      UserDesignation.belongsTo(models.User, {
        foreignKey: 'user_id'
      })
      UserDesignation.belongsTo(models.Designation, {
        foreignKey: 'designation_id'
      })
      UserDesignation.belongsTo(models.EmploymentType, {
        foreignKey: 'employementtype_id'
      })

    }
  }
  UserDesignation.init({
    user_id: DataTypes.INTEGER,
    designation_id: DataTypes.INTEGER,
    employementtype_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: 1
    }
  }, {
    sequelize,
    modelName: 'UserDesignation',
  });
  return UserDesignation;
};