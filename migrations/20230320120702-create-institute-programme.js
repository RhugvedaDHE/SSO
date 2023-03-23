'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('InstituteProgrammes', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      institute_id: {
        type: Sequelize.INTEGER,
        references: { model: 'Institutes', key: 'id' },
      },
      programme_id: {
        type: Sequelize.INTEGER,
        references: { model: 'Programmes', key: 'id' },
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
    await queryInterface.dropTable('InstituteProgrammes');
  }
};