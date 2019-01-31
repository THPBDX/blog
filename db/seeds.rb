require 'faker'
 
Article.destroy_all
User.destroy_all
Comment.destroy_all
Category.destroy_all

10.times do |index|
	category = Category.create!(title: "#{index}")
	user1 = User.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, email: Faker::Internet.email)
	article1 = Article.create!(title: Faker::WorldOfWarcraft.hero, content:Faker::WorldOfWarcraft.quote, user:user1)
	article2 = Article.create!(title: Faker::WorldOfWarcraft.hero, content:Faker::WorldOfWarcraft.quote, user:user1)
	comment = Comment.create!(body: "A mi me gusta comer #{index}kg de patatas fritas")	
end
