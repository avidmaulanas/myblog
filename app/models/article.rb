class Article < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :abuse_reports

	validates :title, :description, :status, presence: true

	before_save :downcase_status

	scope :all_user, -> { select("article.*, user.username, user.email").
		where("article.status = 'published'").
		joins("as article inner join users as user on article.user_id = user.id") 
	}
	scope :current_user, -> { where(user_id: User.current.id)}
	scope :last_articles, -> { order("created_at DESC").limit(20) }
	scope :by_subdomain, ->(n) { where(["user.username = ?", n]) } #=> dipanggil setelah :all_user
	scope :published, -> { where(status: 'published')}
	scope :draft, -> { where(status: 'draft')}	
	scope :order_by_desc, -> {order("created_at DESC")}
	scope :recent, -> (n) { where("user_id > 0").order("created_at DESC").limit(n) }

	acts_as_commentable
	acts_as_taggable
	# acts_rateable
	# seems_rateable


	private
		def downcase_status
			self.status.downcase!
		end
end
