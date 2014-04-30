class AddMissingIndexes < ActiveRecord::Migration
  def change
    add_index :photos, :photographer_id
    add_index :galleries, :user_id
    add_index :galleries, :photographer_id
    add_index :comments, :photo_id
    add_index :comments, :photographer_id
    add_index :comments, :user_id
    add_index :preferences, :user_id
    add_index :photographers, :email, :unique => true
  end
end