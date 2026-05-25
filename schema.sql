CREATE TABLE IF NOT EXISTS ogloszenia (

id INTEGER PRIMARY KEY AUTOINCREMENT,

title TEXT NOT NULL,

city TEXT NOT NULL,

price INTEGER NOT NULL,

img TEXT

);

INSERT INTO ogloszenia (title, city, price, img) VALUES

("Ogłoszenie 1", "Kraków", 150, "https://via.placeholder.com/150"),

("Ogłoszenie 2", "Warszawa", 200, "https://via.placeholder.com/150"),

("Ogłoszenie 3", "Kraków", 100, "https://via.placeholder.com/150");

