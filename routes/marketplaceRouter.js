const express = require('express');

const marketplaceController = require('../controllers/marketplaceController');

const router = express.Router();

router.get('', marketplaceController.getPets);
// router.get('/:petID', marketplaceController.getPetByID);

module.exports = router;
