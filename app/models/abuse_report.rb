class AbuseReport < ActiveRecord::Base
	belongs_to :article

	validates :email, :title, :description, presence: true

	scope :recent, -> (n) { order("created_at DESC").limit(n) }
end
