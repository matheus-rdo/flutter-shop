const express = require('express')
const router = express.Router()
const electrosJSON = require('./json/electro.json')
const cellJSON = require('./json/cell.json')
const arrayUtils = require('./utils/arrayUtils')

router.get('/electro', (req, res, next) => {
    res.send(electrosJSON)
});

router.get('/cell', (req, res, next) => {
    res.send(cellJSON)
});

router.get('/promo', (req, res, next) => {
    let products = [...cellJSON, ...electrosJSON]
    arrayUtils.shuffle(products);
    res.send(products.slice(0,3))
});

module.exports = router;