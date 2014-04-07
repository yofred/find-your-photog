class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.integer :user_id
      t.boolean :traditional
      t.boolean :contemporary
      t.boolean :documentary
      t.boolean :artistic
      t.boolean :conceptual
      t.boolean :glamorous
      t.boolean :retro
      t.boolean :fine_art

      t.timestamps
    end
  end
end
