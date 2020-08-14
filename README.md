# National Parks & Google Reviews
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
The data was loaded into a relational database

![alt text](https://github.com/ejbaq49/etl-project/blob/master/parks-ratings-model.png?raw=true)

ONce we had two clean dataframes, they were loaded into pgAdmin with the table names parks and ratings. 

The file https://github.com/ejbaq49/etl-project/blob/master/schema.sql shows the schema.sql used to create the tables
