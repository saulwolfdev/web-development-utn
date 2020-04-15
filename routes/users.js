var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
		// res.send('respond with a resource');
		res.json({nombre:"GET"})
});
router.post('/', function(req, res, next) {
		// res.send('respond with a resource');
		res.json({nombre:"POST"})
		// console.log("hola")
});
module.exports = router;
