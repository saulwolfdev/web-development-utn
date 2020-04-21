var productosModel = require("../models/productModel")

module.exports = {
    getAll: function(req, res, next) {
        console.log(req.query.buscar)
        res.json({"stauts":"ok"})
      },
    
    getDestados: function(req, res, next) {
        let productos = productosModel.getProductosDestacados();
        console.log(productos)
        res.status(200).json(productos)
    },
    getById: function(req, res, next) {
        console.log(req.params.id)
        let productos = {
          "id":1,
          "nombre":"moto X",
          "categoria":"celulares"
        }
        res.json(productos)
    },
    create: function(req, res, next) {
        console.log(req.body.nombre)
        res.status(201).json({"stauts":"ok"})
    }  
}