class Comment < ActiveRecord::Base

  include ActsAsCommentable::Comment  

  validates :name, :email, :comment, presence: true

  before_create :current_user_comment

  default_scope -> { order('created_at ASC') }
  scope :recent, ->(n) { order('created_at DESC').limit(n) }

  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of comments.
  #acts_as_voteable

  # NOTE: Comments belong to a article
  belongs_to :article
  belongs_to :commentable, :polymorphic => true
  
  private
	  def current_user_comment
	  	if not User.current.eql?(nil)
	  		self.name = User.current.username
	  		self.email = User.current.email
	  	end
	  end

end
