require 'faker'

Blog.destroy_all
5.times do
  blog = Blog.new
  blog.title = Faker::LeagueOfLegends.quote
  blog.body = Faker::Lorem.paragraph
  blog.save!
end