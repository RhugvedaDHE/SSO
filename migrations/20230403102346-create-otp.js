'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('OTPs', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      otp_type: {
        type: Sequelize.STRING
      },
      otp: {
        type: Sequelize.STRING
      },
      attempts: {
        type: Sequelize.INTEGER
      },
      details: {
        type: Sequelize.STRING,
      },
      is_active: {
        type: Sequelize.BOOLEAN,
        default: true
      },
      time: {
        allowNull: false,
        type: Sequelize.DATE
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    },{
      indexes: [
          {
              unique: true,
              fields: ['otp_type', 'details']
          }
      ]
    },
    );
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('OTPs');
  }
};