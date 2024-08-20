const express = require('express');
const dotenv = require('dotenv');
const config = require('../config.js');
const auth = require('./user-auth/route');
const  {verifyToken} = require('../src/middleware/authMiddleware.js')
const {routerProductos} = require('./routes/producto');

const app = express();
app.use(express.json());
dotenv.config();
const PORT = config.app.port;

app.use('/auth', auth);
app.all("*", (req, res, next) => {
    verifyToken(req, res, next);
});

app.use('/productos',routerProductos);

app.listen(PORT, () => {
    console.log(`Servidor corriendo en el puerto ${PORT}`);
});