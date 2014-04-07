class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :gallery_id
      t.integer :comment_id
      t.integer :style_id
      t.integer :photographer_id

      t.timestamps
    end
  end
end
