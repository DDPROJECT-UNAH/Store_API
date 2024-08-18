const express = require('express');
const dotenv = require('dotenv');

dotenv.config();

const app = express();
app.use(express.json());


const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Servidor corriendo en el puerto ${PORT}`);
});

/*prueba para saber si genera token
const {generateToken} = require('../src/middleware/authMiddleware.js');
console.log(generateToken('carlos'))*/