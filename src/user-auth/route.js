const express = require('express');
const bcrypt = require('bcrypt');
const {connection} = require('../../Database/Connection');
const authToken = require('../middleware/authMiddleware');

const router = express.Router();

router.post('/', (req, res, next) => {
    const sql = 'SELECT * FROM usuarios WHERE Usuario = ?';
            connection.query(sql, [req.body.Usuario], (err, data) => {
                if(err) 
                    return res.json({Error: "Login error in server"});
                if(data.length > 0){
                    bcrypt.compare(req.body.Contrasena.toString(), data[0].Contrasena, (err, response) => {
                        if(err) 
                            return res.json({Error: `Password compare error`}); 
                        if(response){
                            try{
                                const token = authToken.generateToken({...data});
                                return res.json({Token: token});
                            }catch(err){
                                next(err);
                            }
                        } else {
                            return res.json({Error: "Password not matched"});
                        }     
                    })
                }  else {
                    return res.json({Error: "No username existed"});
                }

            })
});

module.exports = router; 