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
      StudentEnrollment.belongsTo(models.Institute, {
        foreignKey: 'institute_id'
      }),
      StudentEnrollment.belongsTo(models.Programme, {
        foreignKey: 'programme_id'
      }),
      StudentEnrollment.belongsTo(models.Class, {
        foreignKey: 'current_class_id'
      }),
      StudentEnrollment.belongsTo(models.Semester, {
        foreignKey: 'current_semester_id'
      }),
      StudentEnrollment.belongsTo(models.Subject, {
        foreignKey: 'subject_id'
      }),
      StudentEnrollment.belongsTo(models.EvalTypes, {
        foreignKey: 'evaltype_id'
      }),
      StudentEnrollment.belongsTo(models.Stream, {
        foreignKey: 'stream_id'
      }),
      StudentEnrollment.belongsTo(models.AcademicYear, {
        foreignKey: 'academic_year_id'
      })
    }
  }
  StudentEnrollment.init({
    user_id: DataTypes.INTEGER,
    qual_type_id: DataTypes.INTEGER,
    institute_id: DataTypes.INTEGER,
    programme_id: DataTypes.INTEGER,
    current_class_id: DataTypes.INTEGER,
    academic_year_id: DataTypes.INTEGER,
    current_semester_id: DataTypes.INTEGER,
    subject_id: DataTypes.INTEGER,
    other_institute_name: DataTypes.STRING,
    other_programme_name: DataTypes.STRING,
    other_subject_name: DataTypes.STRING,
    evaltype_id: DataTypes.INTEGER,
    stream_id: DataTypes.INTEGER,
    consolidated_total_marks: DataTypes.INTEGER,
    consolidated_marks_obtained: DataTypes.INTEGER,
    consolidated_grade_obtained: DataTypes.STRING,
    board_university: DataTypes.STRING,
    month_year: DataTypes.STRING,
    userdoc_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.INTEGER,
      defaultValue: 1
    }
  }, {
    sequelize,
    modelName: 'StudentEnrollment',
  });
  return StudentEnrollment;
};