const express = require('express');

const ConvertedUrl = require('../controllers/converturl');

const router = express.Router();

router.get('/', ConvertedUrl.getAllUrlConvert);

router.post('/', ConvertedUrl.postUrlConvert);

module.exports = router;
