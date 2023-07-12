'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Programmes', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      name: {
        type: Sequelize.STRING,
        unique:true
      },
      stream_id: {
        type: Sequelize.INTEGER,
        unique:true
      },
      max_sem: {
        type: Sequelize.INTEGER,
        unique:true
      },
      programme_desc: {
        type: Sequelize.STRING,
        unique:true
      },
      type: {
        type: Sequelize.STRING,
        unique:true
      },
      doc_type_id: {
        type: Sequelize.INTEGER,
        unique:true
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
    await queryInterface.dropTable('Programmes');
  }
};