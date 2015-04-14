class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :client_name
      t.string :completion_status
      t.timestamps
    end
  end
end
