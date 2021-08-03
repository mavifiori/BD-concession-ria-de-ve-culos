const Pool = require('pg').Pool

const pool = new Pool({
    user: 'postgres',
    password : '1234',
    host : 'localhost',
    port : 5432,
    database : 'loja_de_veiculos '
})


module.exports = pool;