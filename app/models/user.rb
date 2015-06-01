# require 'carrierwave/orm/activerecord'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 	has_many :articles

 	validates :email, presence: true
	validates :username, uniqueness: true

 	mount_uploader :avatar, AvatarUploader

  extend FriendlyId
  friendly_id :username, use: [:slugged, :finders]

 	scope :recent, ->(n) { order("created_at DESC").limit(n) }

 	def self.current
    Thread.current[:user]
  end
  def self.current=(user)
    Thread.current[:user] = user
  end

end
