class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.integer :photo_id
      t.integer :user_id
      t.string :title

      t.timestamps
    end
  end
end
