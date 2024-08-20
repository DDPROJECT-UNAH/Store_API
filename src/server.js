const express = require('express');
const dotenv = require('dotenv');
const config = require('../config');
const { connection } = require('../Database/Connection');
const auth = require('./user-auth/route');


const {routerProductos} = require('./routes/producto');

const app = express();
app.use(express.json());
dotenv.config();
const PORT = config.app.port;


// app.all("*", (req, res, next) => {
//     console.log(req); // do anything you want here
//     next();
// });



app.use('/auth', auth);

app.use('/productos',routerProductos);

app.listen(PORT, () => {
    console.log(`Servidor corriendo en el puerto ${PORT}`);
});