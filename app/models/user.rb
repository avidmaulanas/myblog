# require 'carrierwave/orm/activerecord'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

 	has_many :articles

  validates :email, format: { with: Devise.email_regexp, message: "This value should be a valid email." }
 	validates :password, length: Devise.password_length, allow_blank: true, unless: :edit_user?
 	validates :password_confirmation, length: Devise.password_length, if: :edit_password?
  validates :firstname, :lastname, presence: true, on: :update, if: :edit_user?

  attr_accessor :edit_user, :edit_password

 	mount_uploader  :avatar, AvatarUploader
  crop_uploaded   :avatar
  # process_in_background :avatar

  extend FriendlyId

  friendly_id :slug_name, use: [:slugged, :finders]

 	scope :recent, ->(n) { order("created_at DESC").limit(n) }

  before_save :set_avatar

 	def self.current
    Thread.current[:user]
  end

  def self.current=(user)
    Thread.current[:user] = user
  end

  def full_name
    if firstname.present? or lastname.present?
      [firstname, lastname].join(" ")
    else
      self.username || self.email
    end
  end

  def slug_name
    self.username || slug_random
  end

  def should_generate_new_friendly_id?
    slug.blank? || username_changed?
  end

  private
    def edit_user?
      self.edit_user
    end

    def edit_password?
      self.edit_password
    end

    def slug_random
      [*('a'..'z'),*('0'..'9')].shuffle[0,8].join
    end

    def set_avatar
      self.avatar = generate_avatar if self.avatar.blank?
    end

    def generate_avatar
      img = Avatarly.generate_avatar(self.full_name, opts={size: 400})
      dir = "public/uploads/tmp"
      File.open("#{dir}/avatar.png", 'wb') do |f|
        f.write img
      end
      File.open("#{Rails.root}/#{dir}/avatar.png")
    end

    def validate_username
      if User.where(email: username).exists?
        errors.add(:username, :invalid)
      end
    end
end
