class Article < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :abuse_reports

	extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

	validates :title, presence: true

	before_save :downcase_status

	scope :all_user, -> { includes(:user).where(status: 'published') }
	scope :current_user, -> { where(user_id: User.current.id)}
	scope :last_articles, -> { order("created_at DESC").limit(20) }
	scope :by_subdomain, ->(n) { where(["user.username = ?", n]) } #=> dipanggil setelah :all_user
	scope :published, -> { includes(:tags, :user).where(status: 'published')}
	scope :draft, -> { where(status: 'draft')}
	scope :order_by_desc, -> {order("created_at DESC")}
	scope :recent, -> (n) { where("user_id > 0").order("created_at DESC").limit(n) }

	acts_as_commentable
	acts_as_taggable
	acts_as_votable

	searchable do
    text :title, boost: 5
    text :description, :posted_month, :author_name
    text :tags do
    	tags.map(&:name)
    end

    string 	:status
    time    :created_at
  end

	private
		def downcase_status
			self.status.downcase!
		end

		def posted_month
		  self.created_at.strftime("%B %Y")
		end

		def author_name
			self.user.full_name
		end

end
