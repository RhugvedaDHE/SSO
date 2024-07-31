"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class InstituteProgrammeSubject extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      InstituteProgrammeSubject.belongsTo(models.Programme, {
        foreignKey: "programme_id",
      }),
        InstituteProgrammeSubject.belongsTo(models.Institute, {
          foreignKey: "institute_id",
        }),
        InstituteProgrammeSubject.belongsTo(models.Subject, {
          foreignKey: "subject_id",
        }),
        InstituteProgrammeSubject.belongsTo(models.UserDocs, {
          foreignKey: "userdoc_id",
        })
    }
  }
  InstituteProgrammeSubject.init(
    {
      programme_id: DataTypes.INTEGER,
      institute_id: DataTypes.INTEGER,
      subject_id: DataTypes.INTEGER,
      userdoc_id: DataTypes.INTEGER,
      is_active: {
        type: DataTypes.BOOLEAN,
        defaultValue: true,
      },
    },
    {
      sequelize,
      modelName: "InstituteProgrammeSubject",
    }
  );
  return InstituteProgrammeSubject;
};
