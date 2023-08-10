'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class AdditionalSkill extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      AdditionalSkill.belongsTo(models.DocumentType, {
        foreignKey: 'doc_type_id'
      })
    }
  }
  AdditionalSkill.init({
    name: DataTypes.STRING,
    doc_type_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: true
    }
  }, {
    sequelize,
    modelName: 'AdditionalSkill',
  });
  return AdditionalSkill;
};