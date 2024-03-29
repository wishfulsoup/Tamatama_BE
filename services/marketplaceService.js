const marketplaceDao = require('../models/marketplaceDao');

const getPets = async (userID) => {
  return await marketplaceDao.getPets(userID);
};

const getPetByID = async (petID) => {
  const result = await marketplaceDao.getPetById(petID);

  return result;
};

module.exports = {
  getPets,
  getPetByID,
};
