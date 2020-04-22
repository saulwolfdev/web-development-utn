var productosModel = require("../models/productosModel")

module.exports = {
    getAll: async function(req, res, next) {
        let productos = await productosModel.getProductos();
        console.log(productos)
        res.status(200).json(productos)
      },
    
    getDestados: async function(req, res, next) {
        let productos = await productosModel.getProductosDestacados();
        console.log(productos)
        res.status(200).json(productos)
    },
    getById: async function(req, res, next) {
        console.log(req.params.id)
        let productos = await productosModel.getById(req.params.id);
        console.log(productos)
        res.status(200).json(productos)
    },
    create: function(req, res, next) {
        console.log(req.body.nombre)
        res.status(201).json({"stauts":"ok"})
    }  
}