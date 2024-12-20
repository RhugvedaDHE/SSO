'use strict';
const { Model } = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Session extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // Define association here
      Session.belongsTo(models.User, {
        foreignKey: 'user_id',
      });
    }
  }

  Session.init(
    {
      user_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        field: 'user_id', // Maps to the correct database column
      },
      token: {
        type: DataTypes.TEXT,
        allowNull: false,
      },
      refresh_token: {
        type: DataTypes.TEXT,
        allowNull: false,
      },
      expires_at: {
        type: DataTypes.DATE,
        allowNull: false,
        field: 'expires_at', // If your database column name uses snake_case
      },
    },
    {
      sequelize,
      modelName: 'Session',}
  );

  return Session;
};