const mysql = require('mysql');
const dotenv = require('dotenv');
const config = require('../config');

dotenv.config();

// Configuración de la conexión
const connection = mysql.createConnection({
  host: config.mysql.host,
  user: config.mysql.user,
  password: config.mysql.password,
  database: config.mysql.database
});

// Conectar a la base de datos
connection.connect((err) => {
  if (err) {
    console.error('Error connecting to the database:', err.stack);
    return;
  }
  console.log('Connected to the database.');
});

// btener usuarios
function getUsuarios(callback) {
  connection.query('SELECT * FROM usuarios', (err, rows) => {
    if (err) return callback(err);
    callback(null, rows);
  });
}

//obtener productos
function getProductos(callback) {
  connection.query('SELECT * FROM productos', (err, rows) => {
    if (err) return callback(err);
    callback(null, rows);
  });
}


module.exports = {
  connection,
  getUsuarios,
  getProductos
};
