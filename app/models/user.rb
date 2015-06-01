# require 'carrierwave/orm/activerecord'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 	has_many :articles

 	validates :email, :username, presence: true, uniqueness: true
  validates :firstname, :lastname, presence: true

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

  def full_name
    "#{firstname} #{lastname}"
  end

end
