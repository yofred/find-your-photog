class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :photo_id
      t.integer :user_id
      t.integer :photographer_id
      t.text :message

      t.timestamps
    end
  end
end
