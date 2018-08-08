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

// get all rows from the user table
app.get("/users", (req, res) => {
  connection.query("SELECT * FROM `user`", function(error, results, fields) {
    if (error) throw error;
    res.send(results);
  });
});

// get specific row on user table based on the id
app.get("/users/:id", (req, res) => {
  connection.query(
    "SELECT * FROM `user` WHERE `id` = ?",
    req.params.id,
    function(error, results, fields) {
      if (error) throw error;
      res.send(results);
  });
});

// get all rows from task table
app.get("/tasks", (req, res) => {
  connection.query(
    "SELECT task.id, task.title, task.description, task.created, task.updated, \
    task.due_date, status.name as 'Status', user.name as 'Username' FROM `task` \
    INNER JOIN `status` ON status.id = task.status_id \
    LEFT JOIN `user` ON task.user_id = user.id ORDER BY 1",
    function(error, results, fields) {
      if (error) throw error;
      res.send(results);
  });
});

// get specific row from task table based on the ID
app.get("/tasks/:id", (req, res) => {
  connection.query(
    "SELECT task.id, task.title, task.description, task.created, task.updated, \
    task.due_date, status.name as 'Status', user.name as 'Username' FROM `task` \
    LEFT JOIN `status` ON status.id = task.status_id \
    LEFT JOIN `user` ON user.id = task.user_id \
    WHERE task.id = ?", req.params.id, function(error, results, fields) {
      if (error) throw error;
      res.send(results);
  });
});

// update one specific field ( title, due_date, status_id )
app.patch("/tasks/:id", (req, res) => {
  const key = Object.keys(req.body);
  if ( key.length > 1 || ["title", "due_date", "status_id"].indexOf(key[0]) === -1 ) {
    throw "Invalid key.  Please provide a single and valid field to update.";
  } else {
    connection.query("UPDATE `task` SET ? WHERE id = ?", [req.body, req.params.id], function(error, results, fields) {
      try {
        if (error) throw error.sqlMessage;
        res.send("Record has been updated.");
      } catch (error) {
          res.send(error);
      }
    });
  }
});

// insert a new record in the task table
app.post("/tasks", (req, res) => {
  connection.query("INSERT INTO `task` SET ?", [req.body], function(error, results, fields) {
    try {
      if (error) throw error;
      res.send("Record has been inserted.");
    } catch (error) {
        res.send(error);
    }
  });
});

// delete specific row from task based on the id specified
app.delete("/tasks/:id", (req, res) => {
  connection.query("DELETE FROM `task` WHERE id = ? limit 1", [req.params.id], function(error, results, fields) {
    try {
      if (error) throw error;
      res.send("Record has been deleted.");
    } catch (error) {
        res.send(error);
    }
  });
});

// delete specific row from the user table based on the id specified
app.delete("/users/:id", (req, res) => {
  connection.query("DELETE FROM `user` WHERE id = ? limit 1", [req.params.id], function(error, results, fields) {
    try {
      if (error) throw error;
      res.send("Record has been deleted.");
    } catch (error) {
        res.send(error);
    }
  });
});

// listening port for http connections
app.listen(8080, function() {
  console.log("Example app listening on port 8080");
});
