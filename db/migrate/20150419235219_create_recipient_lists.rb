class CreateRecipientLists < ActiveRecord::Migration
  def change
    create_table :recipient_lists do |t|
      t.references :email, index: true, foreign_key: true
      t.string :name
      t.text :list

      t.timestamps null: false
    end
  end
end
