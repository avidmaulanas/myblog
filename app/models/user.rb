# require 'carrierwave/orm/activerecord'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

 	has_many :articles

  validates :email, presence: true, format: { with: Devise.email_regexp }
 	validates :password, :password_confirmation, length: Devise.password_length, if: :password_required?
  validates :firstname, :lastname, presence: true, on: :update

  attr_accessor :password_required

 	mount_uploader  :avatar, AvatarUploader
  crop_uploaded   :avatar
  process_in_background :avatar

  before_create :set_slug

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

  def set_slug
    self.slug = [*('a'..'z'),*('0'..'9')].shuffle[0,8].join
  end

  def should_generate_new_friendly_id?
    if !slug? || username_changed?
      true
    else
      false
    end
  end

  private
    def password_required?
      self.password_required || false
    end
end
