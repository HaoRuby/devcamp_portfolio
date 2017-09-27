require 'faker'

Topic.destroy_all
5.times do |t|
  topic = Topic.new
  topic.title = "Topic #{t}"
  topic.save!
end

Blog.destroy_all
10.times do |t|
  blog = Blog.new
  blog.title = "My blog #{t}"
  blog.body = Faker::Lorem.paragraph
  blog.topic_id = Faker::Number.between(1, 4)
  blog.save!
end

Skill.destroy_all
5.times do |t|
  skill = Skill.new
  skill.title = "My skill #{t}"
  skill.percent_completed = Faker::Number.between(10, 100)
  skill.save!
end

Portfolio.destroy_all
9.times do |t|
  portfolio = Portfolio.new
  portfolio.title = "Portfolio #{t}"
  portfolio.subtitle = Faker::Lorem.sentence
  portfolio.body = Faker::Lorem.paragraph
  portfolio.main_image = 'http://via.placeholder.com/600x400'
  portfolio.thumb_image = 'http://via.placeholder.com/350x200'
  portfolio.save!
end