const express = require('express');

// const userRouter = require('./userRouter');
// const petRouter = require('./petRouter');
// const dressroomRouter = require('./dressroomRouter');
const marketplaceRouter = require('./marketplaceRouter');

const routes = express.Router();

// routes.use('/users', userRouter);
// routes.use('/pets', petRouter);
// routes.use('/dressroom', dressroomRouter);
routes.use('/marketplace', marketplaceRouter);

module.exports = routes;
