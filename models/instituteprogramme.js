'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class InstituteProgramme extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      InstituteProgramme.belongsTo(models.Institute, {
        foreignKey: 'institute_id'
      }),
      InstituteProgramme.belongsTo(models.Programme, {
        foreignKey: 'programme_id'
      })
    }
  }
  InstituteProgramme.init({
    institute_id: DataTypes.INTEGER,
    programme_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: true
    }
  }, {
    sequelize,
    modelName: 'InstituteProgramme',
  });
  return InstituteProgramme;
};