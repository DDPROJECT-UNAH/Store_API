const express = require('express');
const dotenv = require('dotenv');
const config = require('../config');
const { connection } = require('../Database/Connection');
const auth = require('./user-auth/route');

dotenv.config();

const app = express();
app.use(express.json());

const PORT = config.app.port;

app.use('/auth', auth);

app.listen(PORT, () => {
    console.log(`Servidor corriendo en el puerto ${PORT}`);
});