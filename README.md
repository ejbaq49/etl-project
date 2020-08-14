# National Parks & Google Reviews
![alt_text](https://github.com/ejbaq49/etl-project/blob/master/resources/Yosemite-iStock.jpg?raw=true)
## ETL Project
### Boot Camp Module 13

So you want to plan a family trip to US national parks, but which one should you pick? How about slecting your park by the google rating? 

## Extract
Data sources include national parks json and google places API

National park JSON from data world
https://data.world/kevinnayar/us-national-parks

Google places API
https://developers.google.com/places/supported_types#table1
Some of the challenges with the google places APi included getting inconsistent results when calling the place details API. This is an API issue not a code issue. 

## Transform
National park JSON was farily clean and only minor data cleanup was needed. 6 columns were removed, 'date_established_unix','image', 'nps_link','states','area','coordinates'. The index was also reset.

The google API transformation was more complex. We called the find place API to get a place ID. Then, we used the place ID to call the place details API to get ratings for each national park. We tested the return to get the ratings and found the returns to be inconsisitent. 

## Load
The data was loaded into a postgres relational database

![alt text](https://github.com/ejbaq49/etl-project/blob/master/parks-ratings-model.png?raw=true)

ONce we had two clean dataframes, they were loaded into pgAdmin with the table names parks and ratings. 

The file https://github.com/ejbaq49/etl-project/blob/master/schema.sql shows the schema.sql used to create the tables

## Steps to reproduce project
Step | Description
----------|----------
1| Create a Python file for your credentials called "keys.py"
2| gKey="YourAPIKeyHere"
3| connection_string="user:password"
4| Create a new PostgreSQL database in PGAdmin called "national_parks"
5| Create tables in the database using the file called "schema.sql"
6| Open and run Jupyter notebook "extract-xform-load.ipynb"
7| Open another query in PGAdmin and run the file "review_parks.sql" to see results
