# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Create Users..."

progress_bar = ProgressBar.new
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
	progress_bar.increment!
end

puts "Create Articles..."
articles = []
30.times do
	articles << {
		title: Faker::Lorem.sentence,
		description: Faker::Hipster.paragraph(3),
		status: 'published',
		tag_list: ['Sport', 'News', 'Techno'].sample,
		user_id: User.pluck(:id).sample
	}
	progress_bar.increment!
end

Article.create(articles)
progress_bar.increment!