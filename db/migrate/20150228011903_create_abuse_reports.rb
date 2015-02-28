class CreateAbuseReports < ActiveRecord::Migration
  def change
    create_table :abuse_reports do |t|
      t.string :title
      t.string :description
      t.integer :article_id

      t.timestamps null: false
    end
    add_index :abuse_reports, :article_id
  end
end
