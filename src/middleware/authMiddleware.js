const dotenv = require("dotenv");
dotenv.config();

const jwt = require('jsonwebtoken');

exports.verifyToken = (req, res, next) => {
    const token = req.headers['x-access-token'];
    if (!token) return res.status(403).json({ message: 'Token no Proporcionado' });

    jwt.verify(token, process.env.JWT_SECRET, (err, decoded) => {
        if (err) return res.status(500).json({ message: 'No se pudo autenticar el token' });

        req.userId = decoded.id;
        next();
    });
};

exports.generateToken =(user) => {
    const token = jwt.sign({ id: user }, process.env.JWT_SECRET, { expiresIn: 86400 });
    return token
}