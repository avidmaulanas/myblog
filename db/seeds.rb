require 'progress_bar'

puts "Create Users..."

user_progress_bar = ProgressBar.new(11)
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
	user_progress_bar.increment!
end
user_progress_bar.increment!

puts "Create Articles..."
article_progress_bar = ProgressBar.new(1_000_000)
articles = []
1_000_000.times do
	ActiveRecord::Base.transaction do
		article_params = {
			title: Faker::Company.catch_phrase,
			description: Faker::Lorem.paragraphs(rand(3..8)).join(' '),
			status: 'published',
			tag_list: ['sport', 'news', 'techno'].sample,
			user_id: User.pluck(:id).sample,
			created_at: Faker::Date.between(2.year.ago, Date.today)
		}
		article = Article.new(article_params)
		article.save
		article_progress_bar.increment! 100
	end
end

article_progress_bar.increment! 1_000_000
