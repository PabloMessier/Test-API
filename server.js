const express = require('express')
const { Pool } = require('pg')

const app = express()
const port = 3000

// Connection details for the PostgreSQL server
const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'recipes',
    password: '1234',
    port: 5432,
})

// Endpoint for retrieving all recipes
app.get('/recipes', (_req, res) => {
  pool.query(
      'SELECT * FROM recipes',
      (err, result) => {
        if (err) {
          res.status(500).json({ error: 'Error retrieving recipes from the database' });
        } else if(result && result.rows) {
          res.status(200).json(result.rows);
        } else {
          res.status(404).json({ message: "No data found" });
        }
      }
  );
})

// Endpoint for retrieving a specific recipe by ID
app.get('/recipes/:id', (req, res) => {
  const id = req.params.id;
  pool.query('SELECT * FROM recipes WHERE id = $1', [id], (err, result) => {
      if (err) {
          res.status(500).json({ error: 'Error retrieving recipe from the database' });
      }
      res.status(200).json(result.rows);
  });
});

app.listen(port, () => {
    console.log(`API listening on port ${port}!`)
})
