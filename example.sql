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