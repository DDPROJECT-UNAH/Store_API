const { Sequelize } = require('sequelize');
const mysql = require('mysql2/promise');

async function createDatabase() {
  const dbName = 'mi_nueva_base_de_datos';
  const username = 'root';
  const password = 'su_contraseña';
  const host = 'localhost';
  const dialect = 'mysql';

  try {
    // Primero, crear la base de datos usando mysql2
    const connection = await mysql.createConnection({ host, user: username, password });
    await connection.query(`CREATE DATABASE IF NOT EXISTS ${dbName};`);
    console.log(`Base de datos ${dbName} creada o ya existente.`);
    await connection.end();
    const sequelize = new Sequelize(dbName, username, password, {
      host: host,
      dialect: dialect
    });

    await sequelize.authenticate();
    console.log('Conexión establecida correctamente con Sequelize.');
    await sequelize.close();

  } catch (error) {
    console.error('Error:', error);
  }
}

createDatabase();