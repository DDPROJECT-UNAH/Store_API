const { ProductoController } = require('../controllers/producto.js')
const { Router } = require('express')

const routerProductos = Router()

routerProductos.get('/', ProductoController.getProductos)

routerProductos.post('/', ProductoController.saveProduct)

module.exports = {
    routerProductos
}