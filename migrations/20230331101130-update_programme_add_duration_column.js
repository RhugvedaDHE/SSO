'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  up: (queryInterface, Sequelize) => {
    return Promise.all([
      queryInterface.addColumn("Programmes", "programme_desc", {
        type: Sequelize.STRING,
        allowNull: true,
      }),
      queryInterface.addColumn("Programmes", "max_sem", {
        type: Sequelize.INTEGER,
        allowNull: true,
      }),
      queryInterface.addColumn("Programmes", "type", {
        type: Sequelize.STRING,
        allowNull: true,
      }),
    ]);
  },
  down: (queryInterface) => {
    return Promise.all([queryInterface.removeColumn("Programmes", "programme_desc", "max_sem")]);
  },
};
