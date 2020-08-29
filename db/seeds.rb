# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "Username1")
user2 = User.create(username: "Username2")

artwork1 = Artwork.create(title: "Title1", image_url: "image_url1", artist_id: 2)
artwork2 = Artwork.create(title: "Title2", image_url: "image_url2", artist_id: 1)
