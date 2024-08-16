const express = require('express');
const { Sequelize, DataTypes } = require('sequelize');
const app = express();
const port = 3000;

app.use(express.json());

const sequelize = new Sequelize('nombre_de_tu_base_de_datos', 'tu_usuario', 'tu_contraseña', {
  host: 'localhost',
  dialect: 'mysql'
});


const Usuario = sequelize.define('Usuario', {
  nombre: {
    type: DataTypes.STRING,
    allowNull: false,
    references: {
      model: 'Usuario',
      key: 'id'
    },
    primaryKey: true
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
    validate: {
      isEmail: true
    }
  }
});

sequelize.sync({ force: false }).then(() => {
  console.log('Base de datos y tablas creadas!');
});

app.get('/usuarios', async (req, res) => {
  try {
    const usuarios = await Usuario.findOne({
        where: {
            id: 1
        }
    });
    res.json(usuarios);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.listen(port, async () => {
  try {
    await sequelize.authenticate();
    console.log('Conexión a la base de datos establecida correctamente.');
    console.log(`Servidor corriendo en http://localhost:${port}`);
  } catch (error) {
    console.error('No se pudo conectar a la base de datos:', error);
  }
});