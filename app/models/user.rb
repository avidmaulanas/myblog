# require 'carrierwave/orm/activerecord'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 	has_many :articles 	

 	validates :username, :email, presence: true
	validates :username, uniqueness: true

 	mount_uploader :avatar, AvatarUploader

 	scope :recent, ->(n) { order("created_at DESC").limit(n) }

  letsrate_rater

 	def self.current
    Thread.current[:user]
  end
  def self.current=(user)
    Thread.current[:user] = user
  end

end
