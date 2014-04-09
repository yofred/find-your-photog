class AddPhotographerIdToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :photographer_id, :integer
  end
end
