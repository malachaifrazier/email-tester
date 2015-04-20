class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.references :campaign, index: true, foreign_key: true
      t.string :name
      t.string :subject
      t.string :hosted_html
      t.integer :campaign_id

      t.timestamps null: false
    end
  end
end
