'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class StudentOtherSkill extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      StudentOtherSkill.belongsTo(models.User, {
        foreignKey: 'user_id'
      })
    }
  }
  StudentOtherSkill.init({
    name: DataTypes.STRING,
    user_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: true
    }
  }, {
    sequelize,
    modelName: 'StudentOtherSkill',
  });
  return StudentOtherSkill;
};