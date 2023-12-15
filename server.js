const express = require("express");
var hbs = require('express-hbs');
const app = express();
const port = 3000;
const path = require('path');
var mysql      = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'node_tp'
});

connection.connect();

// Use .hbs for extensions and find partials in views/partials.
app.engine('hbs', hbs.express4({
  partialsDir: __dirname + '/views'
}));
app.set('view engine', 'hbs');
app.set('views', __dirname + '/views');




app.get('/', (req, res) => {
  // Example query to fetch data from the database
  connection.query('SELECT * FROM actualités', (error, results) => {
    if (error) {
      console.error('Error querying the database: ', error);
      res.status(500).send('Internal Server Error');
    } else {
      // Render a view using Handlebars and pass the data from the database
      res.render('main', { actualités: results });
    }
  });
});

app.get("/add", (req, res) => {
  res.sendFile(path.join(__dirname, "views/add.html"));
});

app.get("/addnews", function(req, res) {
    var untitre = req.query.letitre;
    var unedesc = req.query.ladescription;
    var sql = "insert into actualités(titre, contenu) values(?, ?)"
    
    connection.query(sql, [untitre, unedesc], function(error, results, fields) {
      res.redirect('/');
    })
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
