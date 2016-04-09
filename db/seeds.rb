# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Create Users..."

user_progress_bar = ProgressBar.new
users = []

10.times do 
	user_params = {
		username: Faker::Internet.user_name,
		firstname: Faker::Name.first_name,
		lastname: Faker::Name.last_name,
		email: Faker::Internet.safe_email,
		password: '12345678',
		password_confirmation: '12345678',
		biographical_info: Faker::Hipster.paragraphs(1).first
	}
	user = User.new(user_params)
	user.save
	user.confirm!
	user_progress_bar.increment! 5
end
user_progress_bar.increment! 100

puts "Create Articles..."
article_progress_bar = ProgressBar.new
articles = []
30.times do
	articles << {
		title: Faker::Lorem.sentence,
		description: Faker::Hipster.paragraph(3),
		status: 'published',
		tag_list: ['sport', 'news', 'techno'].sample,
		user_id: User.pluck(:id).sample
	}
	article_progress_bar.increment! 5
end

Article.create(articles)
article_progress_bar.increment! 100