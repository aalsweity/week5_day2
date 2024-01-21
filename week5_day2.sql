DROP TABLE IF EXISTS Movie CASCADE;
CREATE TABLE Movie (
  "movie_id" SERIAL PRIMARY KEY,
  "movie_title" VARCHAR,
  "genre" VARCHAR,
  "rating" VARCHAR,
  "time_length" INTEGER
);

DROP TABLE IF EXISTS Customer CASCADE;
CREATE TABLE Customer (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR,
  "last_name" VARCHAR,
  "email" VARCHAR,
  "phone_number" VARCHAR
);

DROP TABLE IF EXISTS Ticket CASCADE;
CREATE TABLE Ticket (
  "ticket_id" SERIAL PRIMARY KEY,
  "customer_id" INTEGER,
  "movie_id" INTEGER,
  "date" TIMESTAMP,
  FOREIGN KEY (movie_id) REFERENCES Movie(movie_id) ON DELETE CASCADE,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE
);
