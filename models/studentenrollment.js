'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class StudentEnrollment extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      StudentEnrollment.belongsTo(models.User, {
        foreignKey: 'user_id'
      }),
      StudentEnrollment.belongsTo(models.InstituteProgramme, {
        foreignKey: 'institute_programme_id'
      }),
      StudentEnrollment.belongsTo(models.Class, {
        foreignKey: 'current_class'
      })
    }
  }
  StudentEnrollment.init({
    user_id: DataTypes.INTEGER,
    institute_programme_id: DataTypes.INTEGER,
    current_class: DataTypes.INTEGER,
    academic_year: DataTypes.STRING,
    current_semester: DataTypes.STRING,
    section: DataTypes.STRING,
    subject_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: 1
    }
  }, {
    sequelize,
    modelName: 'StudentEnrollment',
  });
  return StudentEnrollment;
};