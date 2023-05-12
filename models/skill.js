'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Skill extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      /*Skill.belongsToMany(models.Job, {
        foreignKey: "skill_id",
        as: "skillid",
        through:'jobSkill'
      });*/
    }
  }
  Skill.init({
    name: DataTypes.STRING,
    active: DataTypes.BOOLEAN
  }, {
    sequelize,
    modelName: 'Skill',
  });
  return Skill;
};