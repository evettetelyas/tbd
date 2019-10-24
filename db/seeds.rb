# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tylor = User.create!(email: 'tylor@fakemail.com', username: 'tyguy', first_name: 'Tylor', last_name: 'Schafer', password: 'password')
evette = User.create!(email: 'evette@fakemail.com', username: 'puglov8r', first_name: 'Evette', last_name: 'Telyas', password: 'password')

tylor.reviews.create!(user_id: tylor.id, reviewer_id: evette.id, rating: 3, content: 'Fake review')
tylor.reviews.create!(user_id: tylor.id, reviewer_id: evette.id, rating: 2, content: 'Fake review')
tylor.reviews.create!(user_id: tylor.id, reviewer_id: evette.id, rating: 4, content: 'Fake review')

evette.reviews.create!(user_id: evette.id, reviewer_id: tylor.id, rating: 5, content: 'Fake review')
evette.reviews.create!(user_id: evette.id, reviewer_id: tylor.id, rating: 4, content: 'Fake review')
evette.reviews.create!(user_id: evette.id, reviewer_id: tylor.id, rating: 3, content: 'Fake review')
