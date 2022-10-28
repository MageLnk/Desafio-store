-- Practicando DB with Postgresql
-- Creamos DB

CREATE DATABASE example;

--selecciono la base de datos

\c example;

-- Creo una tabla

CREATE TABLE example_table(
  id SERIAL PRIMARY KEY,
  nombre VARCHAR,
  phone VARCHAR(20),
  email VARCHAR(50)
);

-- Agregar lastname a la tabla

ALTER TABLE example_table ADD lastname VARCHAR;

-- Borrar la columna creada anteriormente

ALTER TABLE example_table DROP COLUMN lastname;

-- Agregar personas

INSERT INTO example_table (nombre, phone, email) VALUES ('Fabian', '123456789', 'fabianexample@example.example');

-- Agregar varias personas a la vez

INSERT INTO example_table (nombre, phone, email) VALUES ('Diego', '879816765', 'diegonexample@example.example'),
('Mario', '654984896', 'marioexample@example.example'),('Juan', '848648648', 'juanexample@example.example'),
('Pedro', '877984965', 'pedroexample@example.example'),('Alfredo', '516581681', 'alfredoexample@example.example');

-- Agregar unas personas, pero sin email

INSERT INTO example_table (nombre, phone) VALUES ('Marcela', '716493753'), ('Ramiro', '568156984');

-- Borrar a las personas sin email

SELECT * FROM example_table WHERE email IS NULL;
DELETE FROM example_table WHERE email IS NULL;

-- Cambiar el número de teléfono de Diego

SELECT * FROM example_table WHERE nombre = 'Diego';
UPDATE example_table  SET phone = '654987321' WHERE nombre = 'Diego';

-- Qué pasa si agrego algo más largo??

INSERT INTO example_table (nombre, phone, email) VALUES ('Mandingo', '12345678910111213141516171819202122232425', 'mandingoexample@example.example');
-- //Tira un error de demasiado largo. Nice

-- Ver todos los datos
SELECT * FROM example_table;

-- Ver usuarios específicos

SELECT * FROM example_table WHERE nombre = 'Diego' OR nombre = 'Juan';

-- Selecciona los nombres y tráelos ordenados alfabéticamente.

SELECT * FROM example_table ORDER BY nombre ASC;

-- Selecciona los tres primeros de la tabla ordenados alfabéticamente.

SELECT * FROM example_table ORDER BY nombre ASC LIMIT 3;
