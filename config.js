require('dotenv').config();

module.exports =  {
    app: {
        port: process.env.PORT || 3000
    },
    mysql: {
        host: process.env.DATABASE_HOST || 'localhost',
        user: process.env.DATABASE_USER || 'root',
        password: process.env.DATABASE_PASSWORD || '',
        database: process.env.DATABASE || 'store'
    },
    jwt: {
        secret: process.env.JWT_SECRET || 'algo-muy-extenso-y-muy-seguro-fvev-sdcwe-dvfjh'
    }
    
}