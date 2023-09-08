'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Notifications', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      from_userrole: {
        type: Sequelize.INTEGER
      },
      to_userrole: {
        type: Sequelize.INTEGER
      },
      subject: {
        type: Sequelize.STRING
      },
      message: {
        type: Sequelize.STRING
      },
      is_read: {
        type: Sequelize.BOOLEAN,
        default: false
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
    await queryInterface.dropTable('Notifiations');
  }
};