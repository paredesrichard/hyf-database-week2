import express from "express";
import bodyParser from "body-parser";
const app = express();

const fs = require("fs");
const mysql = require("mysql");

const config = JSON.parse(fs.readFileSync("config-secret.json"));

const connection = mysql.createConnection({
  host: config.host,
  user: config.user,
  password: config.password,
  port: config.port,
  database: config.database
});

connection.connect();

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));

// parse application/json
app.use(bodyParser.json());

app.get("/users", (req, res) => {
  connection.query("SELECT * FROM `user`", function(error, results, fields) {
    if (error) throw error;
    console.log(results);
    res.send(results);
  });
});

app.get("/users/:id", (req, res) => {
  console.log('id parameter:', req.params.id);
  connection.query("SELECT * FROM `user` WHERE `id` = ?", req.params.id,  function(error, results, fields) {
    if (error) throw error;
    console.log(results);
    res.send(results);
  });
});

app.listen(3000, function() {
  console.log("Example app listening on port 3000");
});
