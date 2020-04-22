var mainModel = require("../models/usuariosModel")

module.exports = {
    getAll: async function(req, res, next) {
        let usuarios = await mainModel.getAll();
        console.log(usuarios)
        res.status(200).json(usuarios)
      },
    
    
    getById: function(req, res, next) {
        console.log(req.params.id)
        let usuarios = mainModel.getById();
        console.log(usuarios)
        res.json(usuarios)
    },
    create: async function(req, res, next) {
        console.log(req.body)
        await mainModel.create(req.body);
        res.status(201).json({"stauts":"ok"})
    }  
}