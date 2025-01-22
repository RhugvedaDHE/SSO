'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class QualificationTypes extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      QualificationTypes.belongsTo(models.InstituteType, {
        foreignKey: 'institute_type_id'
      })
    }
    
  }
  QualificationTypes.init({
    title: DataTypes.STRING,
    institute_type_id: DataTypes.INTEGER,
    is_active: DataTypes.BOOLEAN
  }, {
    sequelize,
    modelName: 'QualificationTypes',
  });
  return QualificationTypes;
};