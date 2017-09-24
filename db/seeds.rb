# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Blog.destroy_all
5.times do
  blog = Blog.new
  blog.title = Faker::LeagueOfLegends.quote
  blog.body = Faker::Lorem.paragraph
  blog.save!
end