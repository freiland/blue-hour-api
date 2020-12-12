# _Blue Hour Rails API_

_11 December 2020_

#### _An API to hold user uploaded content_

#### By _**Forrest Reiland**_

## Description

_This API will provide the back-end for a photo-sharing webpage. The front-end will be created using React to create a responsive, single-page feed that loads content. My inspiration for this project is to create a dynamic page for photojournalism around the world._

The Rails API will handle creating user with a gem called doorkeeper which uses Oauth. The database will have a posts table which holds a description of the post, the like counter, up to three images and an author. There will also be a seperate postgreSQL table called tags. The tages table will just have an id and a tag. These two tables will have a many-to-many relationship, meaning a single post can have many tages, and a tag can have many attached posts_

_

## API Call Documentation

<!-- | Request | Path | Description | Request URL | Response Header | Response Body Example | Error Header | Error Response Body |
| ------- | ---- | ----------- | ----------- |---------------- | --------------------- | ------------ | ------------------- |
| GET | /parks | return all parks in the API | http://localhost:3000/parks | 200: OK | { "id":1, "name": "Zion National Park", "state":"Utah"}| - | - |
| GET | /parks/:id | return a national park by ID | http://localhost:3000/parks/10 | 200: OK | { "id":10, "name": "Yosemite National Park", "state":"California"}| 404: not_found | { "message": "couldn't find park with 'id' = 10"}
| POST | /parks{name, state} | post a park to the API | http://localhost:3000/parks?name="Grand Canyon"&state="Arizona" | 201: created | {"id" = 11, "name" = "Grand Canyon", "state" = "Arizona" } | 422: Unprocessable Entity | { "message": "Validation failed: Name can't be blank, State can't be blank } |
| PUT | /parks/{park_id}{name, state}  | Edit a specific national parl | http://localhost:3000/parks/15?name=Grand Canyon | 200: OK | { "message" : "park details have been updated sucessfully" } | - | - |
| DELETE | /parks/{park_id} | Delete a specific park | http://localhost:3000/parks/1000 | 200: OK | { "message": "delete sucsessful" } | 404: Not found | { "message": "Couldn't find park with 'id'=1000" } |
| GET | /park/?{name} | return a park matching a search parameter | http://localhost:3000/parks/?name=Yosemite | 200: OK | { "id": 6, "name": "Yosemite National Park", "state":"California"} | - | - |
| GET | /random_park/random | return a random park from the API | http://localhost:3000/random_park/random | 200: OK | { "id": 6, "name": "Yosemite National Park", "state":"California"} | - | - |
| GET | /paginate?page={page_number} | return a page of five park entries from the API | http://localhost:3000/paginate?page=4 | 200: OK | {"id":14,"name":"Zion National Park","state":"Utah"},{"id":15,"name":"Yosemite National Park","state":"California"},{"id":16,"name":"Crater Lake","state":"Oregon"},{"id":17,"name":"Grand Canyon National Park","state":"Arizona"},{"id":18,"name":"Glacier National Park","state":"Montana"} | - | - | -->

## Setup/Installation Requirements

#### Install Rails
* Download Ruby [here](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/ruby-installation-and-setup).
* Run the command `gem install rails -v 5.2.0` to install Rails onto your computer. 

#### Clone Repo and Install Bundler
* Navigate to the directory where you would like to store this repository.
* Run `git clone` command in terminal/command line with this repositorys URL included.
* Run `gem install bundler` to install Bundler to manage all gems for this repository.
* Run `bundle` or `bundle install` in your command line to download all dependencies.

#### Set Up Database

* Run `rake db:create` in the terminal. This creates a dev and test database.
* Run `rake db:schema:load` 
* Run `rake db:seed` to run the seed.rb file for the database.

#### Open in Text Editor
* Open the reposiroty in any text editor (This project was built using VS Code).
* Run `rspec` in your command line to run test specifications. 
* Running the server: Run `rails s` in the terminal. This will start a server, which you can access by entering `localhost:3000` in your browser.

## Further Exploration

This app uses the gem 'will_paginate' to paginate results from an API call. Instead of all results matching the call being displayed at once to user, pagination displays a specified number of results. For this exercise, I have the pagination returning 5 results.

To view the paginated results navigate to localhost:3000/paginate. To navigate to the next page of paginated results go to localhost:3000/paginate?page=2 or localhost:3000/paginate?page=3.





## Technologies Used

* Ruby
* Rails
* Postgres/psql

### License

Copyright (c) 2020 _Forrest Reiland_

This software is licensed under the MIT license.

    