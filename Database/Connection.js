const mysql = require('mysql');

// Configuración de la conexión
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'store' // Asegúrate de que la base de datos 'store' esté especificada aquí
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
  getProductos,
};
