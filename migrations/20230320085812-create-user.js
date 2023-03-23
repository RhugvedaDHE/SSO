'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Users', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      uid: {
        type: Sequelize.STRING,
        unique:true
      },
      username: {
        type: Sequelize.STRING,
        unique:true
      },
      password: {
        type: Sequelize.STRING
      },
      phone: {
        type: Sequelize.STRING,
        unique:true,
        allowNull: true,
      },
      email: {
        type: Sequelize.STRING,
        unique:true,
        allowNull: true
      },
      phone_verified: {
        type: Sequelize.BOOLEAN,
        default: false,        
      },
      email_verified: {
        type: Sequelize.BOOLEAN,
        default: false
      },
      is_active: {
        type: Sequelize.BOOLEAN,
        default: true
      },
      is_verified: {
        type: Sequelize.BOOLEAN,
        default: false
      },
      is_deleted: {
        type: Sequelize.BOOLEAN,
        default: false
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
    await queryInterface.dropTable('Users');
  }
};