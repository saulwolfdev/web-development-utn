module.exports = {
    getProductosDestacados: function(){
        let productos = [
            {
                "id":1,
                "nombre":"iphone 5",
                "categoria":"celulares"
            },
            {
                "id":2,
                "nombre":"iphone 6",
                "categoria":"celulares"
            },
			           {
                "id":3,
                "nombre":"iphone 7",
                "categoria":"celulares"
            },
            {
                "id":4,
                "nombre":"iphone 8",
                "categoria":"celulares"
            }
        ]
          return productos;
    },
    getById: function(){
        let productos = {
            "id":1,
            "nombre":"moto g",
            "categoria":"celulares"
          }
          return productos;
    }
}
