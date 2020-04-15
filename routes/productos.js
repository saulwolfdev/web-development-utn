var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
		res.json({nombre:"productos get"})
});

router.get('/destacados', function(req, res, next) {
  let productos = [
    {
      "id":1,
      "marca":"iphone 6",
      "category":"phone"
    },
    {
      "id":2,
      "marca":"iphone 8",
      "category":"phone"
    },
  ];
  res.status(200).json(productos);
});

router.get('/:id', function(req, res, next) {
  console.log(req.params.id);
  let productos = {
    "id":1,
    "nombre":"yamaha 600",
    "categoria":"moto"
  };
  res.json(productos);
});
router.post('/', function(req, res, next) {
    console.log(req.body.nombre)
    res.status(201).json({"status":"send ok"});
});

module.exports = router;
