# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Article.destroy_all
User.destroy_all

User.create(email: 'enzo@example.fr', password: 'password', password_confirmation: 'password')
User.create(email: 'enzo1@example.fr', password: 'password', password_confirmation: 'password')
User.create(email: 'enzo2@example.fr', password: 'password', password_confirmation: 'password')
User.create(email: 'enzo3@example.fr', password: 'password', password_confirmation: 'password')

20.times do 
  Article.create!(
     title: Faker::Games::Pokemon.name,
     content: Faker::ChuckNorris.fact,
     user_id: User.all.sample.id     
  )
end