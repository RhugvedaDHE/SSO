'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('StudentGuardians', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      guardian_type_id: {
        type: Sequelize.INTEGER,
        references: { model: 'GuardianTypes', key: 'id' },
      },
      relation_with_user: {
        type: Sequelize.STRING
      },
      student_enrollment_id: {
        type: Sequelize.INTEGER,
        references: { model: 'StudentEnrollments', key: 'id' },
      },
      first_name: {
        type: Sequelize.STRING
      },
      last_name: {
        type: Sequelize.STRING
      },
      phone: {
        type: Sequelize.STRING
      },
      email: {
        type: Sequelize.STRING
      },
      aadhar_card_no: {
        type: Sequelize.STRING
      },
      occupation: {
        type: Sequelize.STRING
      },
      designation: {
        type: Sequelize.STRING
      },
      work_address: {
        type: Sequelize.STRING
      },
      annual_income: {
        type: Sequelize.DECIMAL
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
      },
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('StudentGuardians');
  }
};