CREATE DATABASE mycontacts;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS categories (
  id UUID NOT NULL UNIQUE DEFAULT uuid_generate_v4(),
  name varchar NOT NULL
);

CREATE TABLE IF NOT EXISTS contacts (
  id UUID NOT NULL UNIQUE DEFAULT uuid_generate_v4(),
  name varchar NOT NULL,
  email varchar NOT NULL UNIQUE,
  phone varchar,
  category_id UUID,
  FOREIGN KEY(category_id) REFERENCES categories(id)
);
