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

    static updateProduct(req, res) {

        const { id } = req.params
        const data = req.body
        const row = {};
        connection.query('SELECT * FROM productos where ID = ?', id , (err, rows) => {
            if (err) return callback(err);
            if(rows.length === 0){
                return res
                .status(404)
                .json({ error: 'Producto no encontrado' })
            }
            row = rows [0];
        });

        //validar que los datos sean correctos
        const resultado = validarProductoParcial(data)

        if (!resultado.success) {
            return res.status(400).json(JSON.parse(resultado.error))
        }

        const query = 'UPDATE `productos` SET `Titulo` = ? , `Precio`= ? , `Descripcion` = ? , `Categoria` = ? , `Imagen` = ?, `FechaEdicion` = ? , `UsuarioEdicion` = ? ';

        //es una nueva referencia de producto (no existe en la BBDD)
        const productoActualizado = { ...row, ...data }
        connection.query(query, productoActualizado, (err, result) => {
            if (err) return res.status(500).json({ error: err.message });
    
            res.status(200).json({ message: 'Producto insertado correctamente', id: result.insertId });
        });
        //actualizar el producto en la BBDD
        productos[productIndex] = productoActualizado

        return res.json(productoActualizado)


    }
    
}


module.exports = { ProductoController }
