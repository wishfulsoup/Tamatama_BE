const marketplaceService = require('../services/marketplaceService');
const { catchAsync } = require('../utils/error');

const getPets = catchAsync(async (req, res) => {
  const { userID } = req.body;

  const getPets = await marketplaceService.getPets(userID);
  return res.status(200).json({ getPets });
});

// const getPetByID = catchAsync(async (req, res) => {
//   const { petID } = req.params;

//   const getPetByID = await marketplaceService.getPetByID(petID);
//   return res.status(200).json({ getPetDetail });
// });

module.exports = {
  getPets,
  //   getPetByID,
};
