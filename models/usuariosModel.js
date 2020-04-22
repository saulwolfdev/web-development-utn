var db = require("../bin/mysql")

module.exports = {
    getAll: async function(){
        const [rows, fields] = await db.pool.execute("select * from productos");
        console.log("fields",fields)
        return rows;
        
    },
    
    getById: function(){

        let productos = {
            "id":1,
            "nombre":"moto g",
            "categoria":"celulares"
          }
          return productos;
    },
    create: async function(data){

        await db.pool.query(
            'INSERT INTO usuarios SET email = ?, clave = ?,nombre=?,apellido=?',
            [ data.email, data.clave,data.nombre,data.apellido ]
          );
    },
}
