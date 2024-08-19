const z = require('zod');


const productoSchema = z.object({
    "title": z.string().min(10),
    "price": z.number().min(1),
    "description": z.string().min(20),
    "category": z.enum(["jewelery", "electronics", "women's clothing", "men's clothing"]),
    "image": z.string().url(),
})

const validarProducto = (data) => {

    return productoSchema.safeParse(data)

}

const validarProductoParcial = (data) => {
    return productoSchema.partial().safeParse(data)
}

module.exports = {
    validarProducto,
    validarProductoParcial
}