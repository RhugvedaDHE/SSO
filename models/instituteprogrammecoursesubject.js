'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class InstituteProgrammeCourseSubject extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      /*InstituteProgrammeCourseSubject.belongsTo(models.user, {
        foreignKey: "user_id",
        as: "userCompany",
      });

      InstituteProgrammeCourseSubject.belongsTo(models.organizationType, {
        foreignKey: "organization_type_id",
        as: "companyOrganizationType",
      });*/
    }
  }

  InstituteProgrammeCourseSubject.init({
      institute_program_id: {
        type: DataTypes.INTEGER
      },
      program_subject_id: {
        type: DataTypes.INTEGER
      },
      program_course_id: {
        type: DataTypes.INTEGER
      },
      program_semester_id: {
        type: DataTypes.INTEGER
      },
      active: {
        type: DataTypes.BOOLEAN
      },
      createdAt: {
        type: DataTypes.DATE
      },
      updatedAt: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      deletedAt: {
        type: DataTypes.DATE,
        allowNull: true,
      }
  }, {
    sequelize,
    modelName: 'InstituteProgrammeCourseSubject',
  });
  return InstituteProgrammeCourseSubject;
};
