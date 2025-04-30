const mysql = require('mysql2')

const pool = mysql.createPool({
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: 'root',
  database: 'Todo_db',
})

module.exports = {
  pool,
}
