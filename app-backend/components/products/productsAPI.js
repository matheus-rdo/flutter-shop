const express = require('express')
const router = express.Router()
const electrosJSON = require('./json/electro.json')
const cellJSON = require('./json/cell.json')

router.get('/electro', (req, res, next) => {
    res.send(electrosJSON)
});

router.get('/cell', (req, res, next) => {
    res.send(cellJSON)
});

module.exports = router;