'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Institutes', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      institute_type_id: {
        type: Sequelize.INTEGER,
        references: { model: 'InstituteTypes', key: 'id' },
      },
      code: {
        type: Sequelize.STRING
      },
      name: {
        type: Sequelize.STRING
      },
      type: {
        type: Sequelize.STRING
      },
      address: {
        type: Sequelize.STRING
      },
      city_id: {
        type: Sequelize.INTEGER,
        references: { model: 'Cities', key: 'id' },
      },
      district_id: {
        type: Sequelize.INTEGER,
        references: { model: 'Districts', key: 'id' },
      },
      state_id: {
        type: Sequelize.INTEGER,
        references: { model: 'States', key: 'id' },
      },
      country_id: {
        type: Sequelize.INTEGER,
        references: { model: 'Countries', key: 'id' },
      },
      pincode: {
        type: Sequelize.STRING
      },
      hoi_id: {
        type: Sequelize.INTEGER
      },
      contact_person_name: {
        type: Sequelize.STRING
      },
      contact_person_email: {
        type: Sequelize.STRING
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
    await queryInterface.dropTable('Institutes');
  }
};