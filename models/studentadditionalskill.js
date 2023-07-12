'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class StudentAdditionalSkill extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      StudentAdditionalSkill.belongsTo(models.AdditionalSkill, {
        foreignKey: 'additional_skill_id'
      })
      StudentAdditionalSkill.belongsTo(models.User, {
        foreignKey: 'user_id'
      })
      StudentAdditionalSkill.belongsTo(models.Duration, {
        foreignKey: 'duration_id'
      })
      StudentAdditionalSkill.belongsTo(models.Mode, {
        foreignKey: 'mode_id'
      })
    }
  }
  StudentAdditionalSkill.init({
    additional_skill_id: DataTypes.INTEGER,
    user_id: DataTypes.INTEGER,
    title: DataTypes.STRING,
    duration_id: DataTypes.INTEGER,
    location: DataTypes.STRING,
    mode_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: true
    }
  }, {
    sequelize,
    modelName: 'StudentAdditionalSkill',
  });
  return StudentAdditionalSkill;
};