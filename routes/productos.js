var express = require('express');
var router = express.Router();

var productosController = require("../controllers/productosController")

/* GET home page. */
router.get('/', productosController.getAll);
router.get('/destacados', productosController.getDestados);
router.get('/:id', productosController.getById);
router.post('/', productosController.create);

module.exports = router;
