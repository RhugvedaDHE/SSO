'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('StudentEnrollments', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      user_id: {
        type: Sequelize.INTEGER,
        references: { model: 'Users', key: 'id' },
      },
      institute_programme_id: {
        type: Sequelize.INTEGER,
        references: { model: 'InstituteProgrammes', key: 'id' },
      },
      current_class: {
        type: Sequelize.INTEGER,
        allowNull: true
      },
      academic_year: {
        type: Sequelize.STRING,
        allowNull: true
      },
      current_semester: {
        type: Sequelize.STRING,
        allowNull: true
      },
      section: {
        type: Sequelize.STRING,
        allowNull: true
      },
      subject_id: {
        type: Sequelize.INTEGER,
        references: { model: 'Subjects', key: 'id' },
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
    await queryInterface.dropTable('StudentEnrollments');
  }
};