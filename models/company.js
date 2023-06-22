'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Company extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      /*Company.belongsTo(models.user, {
        foreignKey: "user_id",
        as: "userCompany",
      });

      Company.belongsTo(models.organizationType, {
        foreignKey: "organization_type_id",
        as: "companyOrganizationType",
      });*/
      Company.belongsTo(models.Country, {
        foreignKey: 'country_id'
      }),
      Company.belongsTo(models.State, {
        foreignKey: 'state_id'
      }),
      Company.belongsTo(models.District, {
        foreignKey: 'district_id'
      }),
      Company.belongsTo(models.City, {
        foreignKey: 'taluka_id'
      })
    }
  }

  /*
  owner_type_id: {
        type: DataTypes.INTEGER
      },
  */
  Company.init({
    organization_type_id: {
        type: DataTypes.INTEGER
      },
      user_id: {
        type: DataTypes.INTEGER
      },
      name: {
        type: DataTypes.STRING
      },
      logo: {
        type: DataTypes.STRING
      },
      description: {
        type: DataTypes.STRING
      },
      website: {
        type: DataTypes.STRING
      },
      state_id: {
        type: DataTypes.INTEGER
      },
      district_id: {
        type: DataTypes.INTEGER
      },
      taluka_id: {
        type: DataTypes.INTEGER
      },
      village: {
        type: DataTypes.STRING
      },
      country_id: {
        type: DataTypes.INTEGER
      },
      landmark: {
        type: DataTypes.STRING
      },
      street: {
        type: DataTypes.STRING
      },
      pincode: {
        type: DataTypes.STRING
      },
      phone: {
        type: DataTypes.STRING
      },
      reg_no: {
        type: DataTypes.STRING
      },
      reg_certificate: {
        type: DataTypes.STRING
      },
      email: {
        type: DataTypes.STRING
      },
      verified: {
        type: DataTypes.BOOLEAN
      },
      active: {
        type: DataTypes.BOOLEAN
      },
      createdAt: {
        type: DataTypes.DATE
      },
      updatedAt: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      deletedAt: {
        type: DataTypes.DATE,
        allowNull: true,
      }
  }, {
    sequelize,
    modelName: 'Company',
  });
  return Company;
};
