const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
const app = express();
const port = 5000;

// Middleware to allow cross-origin requests
app.use(cors({
  origin: 'http://localhost:3000', // Replace with the actual origin of your frontend if different
}));
// Set up the connection to the MySQL database
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'B3ngal@india',
    database: 'purulia_tourism' // Make sure the database name is correct
});

// Connect to the database
db.connect((err) => {
  if (err) {
    console.error('Error connecting to the database: ', err);
  } else {
    console.log('Connected to the database');
  }
});

// Define the endpoint to fetch tourist spots
app.get('/api/spots', (req, res) => {
  const query = 'SELECT * FROM tourist_spots'; // Ensure the table name is correct
  
  db.query(query, (err, results) => {
    if (err) {
      res.status(500).json({ error: 'Failed to fetch spots' });
    } else {
      res.json(results); // Return results as JSON
    }
  });
});

// Start the server
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
