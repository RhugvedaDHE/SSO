'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('UserContacts', {
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
      type: {
        type: Sequelize.STRING
      },
      address: {
        type: Sequelize.STRING
      },
      country_id:{
        type: Sequelize.INTEGER,
        references: { model: 'Countries', key: 'id' },
      },
      state_id: {
        type: Sequelize.INTEGER,
        references: { model: 'States', key: 'id' },
      },
      district_id: {
        type: Sequelize.INTEGER,
        references: { model: 'Districts', key: 'id' },
      },
      taluka_id: {
        type: Sequelize.INTEGER,
        references: { model: 'Cities', key: 'id' },
      },
      village: {
        type: Sequelize.STRING,
      },
      pincode: {
        type: Sequelize.STRING
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
    await queryInterface.dropTable('UserContacts');
  }
};