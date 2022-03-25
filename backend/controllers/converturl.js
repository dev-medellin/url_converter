const UrlConvert = require('../models/converturl');

exports.getAllUrlConvert = async (req, res, next) => {
  try {
    const [allGroceries] = await UrlConvert.fetchAll();
    res.status(200).json(allGroceries);
  } catch (err) {
    if (!err.statusCode) {
      err.statusCode = 500;
    }
    next(err);
  }
};

exports.postUrlConvert = async (req, res, next) => {
  try {
    const postResponse = await UrlConvert.post(req.body.redirect,req.body.alias);
    res.status(201).json(postResponse);
  } catch (err) {
    if (!err.statusCode) {
      err.statusCode = 500;
    }
    next(err);
  }
};

