const db = require('../Database/Connection.js');

// Obtener y mostrar los usuarios
db.getUsuarios((err, usuarios) => {
  if (err) throw err;
  console.log('Usuarios:', usuarios);
});


