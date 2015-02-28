class AddEmailToAbuseReports < ActiveRecord::Migration
  def change
    add_column :abuse_reports, :email, :string
  end
end
