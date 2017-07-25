CREATE USER has_many_user;

CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

\c has_many_blogs;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(90) NOT NULL,
  first_name VARCHAR(90),
  last_name VARCHAR(90),
  created_at timestamp NOT NULL DEFAULT NOW(),
  updated_at timestamp NOT NULL DEFAULT NOW()
);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title VARCHAR(180),
  url VARCHAR(510),
  content TEXT,
  created_at timestamp NOT NULL DEFAULT NOW(),
  updated_at timestamp NOT NULL DEFAULT NOW(),
  users_id INT REFERENCES users(id) NOT NULL
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  body VARCHAR(510),
  created_at timestamp NOT NULL DEFAULT NOW(),
  updated_at timestamp NOT NULL DEFAULT NOW(),
  users_id INT REFERENCES users(id) NOT NULL,
  posts_id INT REFERENCES posts(id) NOT NULL
);

\i scripts/blog_data.sql;