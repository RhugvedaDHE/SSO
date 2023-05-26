'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Programme extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Programme.belongsToMany(models.Institute,{
        through: "InstituteProgramme",
        as: "programmeId",
        foreignKey: "programme_id"
      })

      Programme.belongsToMany(models.Subject,{
        through: "ProgrammeSubject",
        as: "pId",
        foreignKey: "programme_id"
      })
    }
  }
  Programme.init({
    name: DataTypes.STRING,
    max_sem: DataTypes.STRING,
    programme_desc: DataTypes.STRING,
    type: DataTypes.STRING,
    stream_id: DataTypes.INTEGER,
    is_active: {
      type: DataTypes.BOOLEAN,
      defaultValue: 1
    }
  }, {
    sequelize,
    modelName: 'Programme',
  });
  return Programme;
};