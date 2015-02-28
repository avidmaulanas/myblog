class AddDefaultAvatarUrl < ActiveRecord::Migration
  def change
  	change_column :users, :avatar, :string, :default => "default_profile_pic.jpg"
  end
end
