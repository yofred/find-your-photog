class AddPhotoIdToPhotographers < ActiveRecord::Migration
  def change
    add_column :photographers, :photo_id, :integer
  end
end
