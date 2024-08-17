var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : ''
});

connection.connect();

connection.query('SELECT * FROM store.usuarios; ', function(err, rows, fields) {
  if (err) throw err;
  console.log('The solution is: ', rows[0].Nombre);
});

connection.query('SELECT * FROM store.usuarios; ', function(err, rows, fields) {
    if (err) throw err;
    console.log('The solution is: ', rows[0].Nombre);
  });

connection.end();