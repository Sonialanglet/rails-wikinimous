# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "cleaning seeds"
Article.destroy_all

puts 'Creating 10 fake articles...'
10.times do
  new_article = Article.new(
    title:    Faker::HowIMetYourMother.catch_phrase,
    content: Faker::HowIMetYourMother.quote,
    created_at: Faker::Date.between(2.days.ago, Date.today),
    updated_at:  Faker::Date.between(2.days.ago, Date.today),
  )
  new_article.save!
end
puts 'Finished!'
