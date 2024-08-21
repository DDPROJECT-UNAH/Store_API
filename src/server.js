const express = require("express");
const dotenv = require("dotenv");
const config = require("../config.js");
const auth = require("./user-auth/route");
const { verifyToken } = require("../src/middleware/authMiddleware.js");
const { routerProductos } = require("./routes/producto");
const cors = require("cors");
const app = express();
app.disable("x-powered-by"); // deshabilitar la cabecera x-powered-by
app.use(express.json());
app.use(cors());

dotenv.config();
const PORT = config.app.port;

app.use("/auth", auth);
app.all("*", (req, res, next) => {
  if(!req.baseUrl.includes("auth")){
    verifyToken(req, res, next);
  }
});
app.use("/productos", routerProductos);

app.use((req, res) => {
  res.status(404).json({
    error: true,
    message: "La ruta no existe",
  });
});

app.listen(PORT, () => {
  console.log(`Servidor corriendo en el puerto ${PORT}`);
});
