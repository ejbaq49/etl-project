-- Create Two Tables
CREATE TABLE parks (
  park_id serial,
  date_established_readable	VARCHAR(30),
  description TEXT,
  title VARCHAR(50) PRIMARY KEY,
  id VARCHAR(50),
  visitors VARCHAR(30),
  world_heritage_site VARCHAR(10)	
);

CREATE TABLE ratings (
  ratings_id serial PRIMARY KEY,
  title VARCHAR(50),
  name VARCHAR(75),
  rating VARCHAR(3),
  total_ratings INT
);

--ALTER TABLE "ratings" ADD CONSTRAINT "fk_ratings_parks_title" FOREIGN KEY("title") 
--REFERENCES "parks" ("title");


