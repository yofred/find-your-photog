class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.integer :photo_id
      t.integer :user_id
      t.integer :photographer_id
      t.boolean :traditional
      t.boolean :contemporary
      t.boolean :documentary
      t.boolean :artistic
      t.boolean :conceptual
      t.boolean :glamorous
      t.boolean :retro
      t.boolean :fine_art
      t.boolean :like

      t.timestamps
    end
  end
end
