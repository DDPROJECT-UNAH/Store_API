const {connection} = require('../../Database/Connection');
const {validarProducto } = require('../schemas/producto.js')

class ProductoController {
    
    static getProductos(req, res) {
        connection.query('SELECT * FROM productos', (err, rows) => {
            if (err) return callback(err);
              res.json(rows)
          });

    }

    static getProductosById(req, res) {
        if(Number(req.params.id).toString() === "NaN"){
            return res.status(400).json({message: "Id debe ser un numero"})
        }
        if(Number(req.params.id)===0){
            return res.status(400).json({message: "Id debe ser mayor que cero"})
        }
        connection.query('SELECT * FROM productos where ID = ?', req.params.id , (err, rows) => {
            if (err) return callback(err);
              res.json(rows)
        });
    }

    static deleteProduct(req, res){
        if(Number(req.params.id).toString() === "NaN"){
            return res.status(400).json({message: "Id debe ser un numero"})
        }
        if(Number(req.params.id)===0){
            return res.status(400).json({message: "Id debe ser mayor que cero"})
        }
        connection.query('DElETE FROM productos where ID = ?', req.params.id , (err, rows) => {
            if (err) return callback(err);
              res.json(rows)
        });
    }

    static saveProduct(req, res) {
        //obtener los datos del body de la peticion enviados desde el cliente
        const data = req.body
        // validar que los datos sean correctos
        const resultados = validarProducto(data)

        if (!resultados.success) {
            //parsear el error y enviarlo al cliente de manera mas amigable
            return res.status(400).json(JSON.stringify(resultados.error))
        }

        const query = 'INSERT INTO `productos`(`Titulo`, `Precio`, `Descripcion`, `Categoria`, `Imagen`, `FechaCreacion`, `UsuarioCreacion`) VALUES (?,?,?,?,?,?,?)';
      
        const values = [ data.title, data.price, data.description,data.category, data.image,new Date(),1];

     connection.query(query, values, (err, result) => {
        if (err) return res.status(500).json({ error: err.message });

        res.status(201).json({ message: 'Producto insertado correctamente', id: result.insertId });
    });




       
    }

    
}


module.exports = { ProductoController }
