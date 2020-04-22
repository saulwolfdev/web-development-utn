var db = require("../bin/mysql")

module.exports = {
    getProductos: async function(){
        const [rows, fields] = await db.pool.execute("select * from productos");
        console.log("fields",fields)
        return rows;
        
    },
    getProductosDestacados: async function(){
        const [rows, fields] = await db.pool.execute("select * from productos where destacado is not null");

        return rows;
        
    },
    getById: async function(id){

        const [rows, fields] = await db.pool.execute("select * from productos where id=?",[id]);

        return rows;
    }
}
