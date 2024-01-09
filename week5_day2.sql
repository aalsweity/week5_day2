CREATE TABLE "Movie" (
  "movie_id" SERIAL,
  "movie_title" VARCHAR,
  "genre" VARCHAR,
  "rating" VARCHAR,
  "time_length" INTEGER
);

CREATE TABLE "Customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR,
  "last_name" VARCHAR,
  "email" VARCHAR,
  "phone_number" VARCHAR
);

CREATE TABLE "Ticket" (
  "ticket_id" SERIAL,
  "customer_id" INTEGER,
  "movie_id" INTEGER,
  "date" TIMESTAMP
);
