const { ProductoController } = require('../controllers/producto.js')
const { Router } = require('express')

const routerProductos = Router()

routerProductos.get('/', ProductoController.getProductos)
routerProductos.get('/:id', ProductoController.getProductosById)
routerProductos.post('/', ProductoController.saveProduct)
routerProductos.delete('/:id', ProductoController.deleteProduct)
routerProductos.patch('/', ProductoController.saveProduct)

module.exports = {
    routerProductos
}
