'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('InstituteFaculties', {
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
      faculty_id: {
        type: Sequelize.INTEGER,
        references: { model: 'Faculties', key: 'id' },
      },
      role_id: {
        type: Sequelize.INTEGER,
        references: { model: 'Roles', key: 'id' },
      },
      institute_type_id: {
        type: Sequelize.INTEGER,
        references: { model: 'InstituteTypes', key: 'id' },
      },
      current_sem: {
        type: Sequelize.STRING,
        allowNull: true
      },
      year: {
        type: Sequelize.STRING,
        allowNull: true
      },
      from_date: {
        type: Sequelize.DATE,
        allowNull: true
      },
      to_date: {
        type: Sequelize.DATE,
        allowNull: true
      },
      is_active: {
        type: Sequelize.BOOLEAN,
        default:true
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
    await queryInterface.dropTable('InstituteFaculties');
  }
};