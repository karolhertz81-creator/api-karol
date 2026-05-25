const express = require("express");

const sqlite3 = require("sqlite3").verbose();

const cors = require("cors");

const path = require("path");

const app = express();

app.use(cors());

app.use(express.json());

const db = new sqlite3.Database(path.join(__dirname, "database.sqlite"));

app.get("/api/ogloszenia", (req, res) => {

db.all("SELECT * FROM ogloszenia", [], (err, rows) => {

if (err) return res.status(500).json({ error: err.message });

res.json(rows);

});

});

app.get("/api/ogloszenia/:id", (req, res) => {

db.get("SELECT * FROM ogloszenia WHERE id = ?", [req.params.id], (err, row) => {

if (err) return res.status(500).json({ error: err.message });

res.json(row);

});

});

app.get("/api/szukaj", (req, res) => {

const { q = "", miasto = "", min = 0, max = 999999 } = req.query;

const sql = `

SELECT * FROM ogloszenia

WHERE title LIKE ?

AND city LIKE ?

AND price >= ?

AND price <= ?

`;

db.all(sql, [`%${q}%`, `%${miasto}%`, min, max], (err, rows) => {

if (err) return res.status(500).json({ error: err.message });

res.json(rows);

});

});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {

console.log("API-karol działa na porcie " + PORT);

});

