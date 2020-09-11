# Art Share API

The goal is to build an application to store, share, and comment on artwork, as well as search for users.
Each user has a set of artworks that they own/control. These artworks can also be shared with other users. An artwork that has been shared with one or more other users will be visible to those users, but the artwork still 'belongs to' the original user.

# Ruby version

ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux]

Rails 5.2.4.3

# Database initialization

rails db:setup will create the database, load the schema, and initialize with the seed data.

# Deployment instructions

Navigate to the project directory and run rails s to start the server

Open http://localhost:3000 to view it in the browser or test the API endpoints with https://www.postman.com/.
