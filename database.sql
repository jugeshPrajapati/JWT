-- Active: 1683805640732@@127.0.0.1@5432@jwt
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE DATABASE jwt;
DROP TABLE users;
CREATE Table users(
 user_id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
 user_name TEXT NOT NULL,
 user_email TEXT NOT NULL UNIQUE, 
 user_password TEXT NOT NULL
);
SELECT * FROM users;
INSERT INTO users (user_name,user_email,user_password) VALUES('Bob','bob@gmail.com','bob');
--comment use double quotes instead of single quotes