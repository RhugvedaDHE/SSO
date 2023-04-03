'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Staff', {
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
      employment_type_id: {
        type: Sequelize.INTEGER,
        references: { model: 'EmploymentTypes', key: 'id' },
      },
      pan_number: {
        type: Sequelize.STRING,
        allowNull: true        
      },
      joining_date: {
        type: Sequelize.DATE,
        allowNull: true
      },
      retirement_date: {
        type: Sequelize.DATE,
        allowNull: true
      },
      passport_no: {
        type: Sequelize.STRING,
        allowNull: true
      },
      emergency_contact_no: {
        type: Sequelize.STRING,
        allowNull: true
      },
      google_scholarship_id: {
        type: Sequelize.STRING,
        allowNull: true
      },
      father_husband_guardian_name: {
        type: Sequelize.STRING,
        allowNull: true
      },
      mother_toungue: {
        type: Sequelize.STRING,
        allowNull: true
      },
      office_email: {
        type: Sequelize.STRING,
        allowNull: true
      },
      employee_id: {
        type: Sequelize.STRING,
        allowNull: true
      },
      is_teaching:{
        type: Sequelize.BOOLEAN,
        default:false
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
    await queryInterface.dropTable('Faculties');
  }
};