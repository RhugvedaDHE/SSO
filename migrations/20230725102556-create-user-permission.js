'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('UserPermissions', {
    id: {
      allowNull: false,
      autoIncrement: true,
      primaryKey: true,
      type: Sequelize.INTEGER
    },
    role_id: {
      type: Sequelize.INTEGER
    },
    permission_id: {
      type: Sequelize.INTEGER
    },
    is_active: {
      type: Sequelize.BOOLEAN,
      default: true
    },
    createdAt: {
      allowNull: false,
      type: Sequelize.DATE
    },
    updatedAt: {
      allowNull: false,
      type: Sequelize.DATE
    }
  });


  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('UserPermissions');
  }
};