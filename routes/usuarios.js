var express = require('express');
var router = express.Router();

var mainController = require("../controllers/usuariosController")

/* GET home page. */
router.get('/', mainController.getAll);

router.post('/registro', mainController.create);

module.exports = router;