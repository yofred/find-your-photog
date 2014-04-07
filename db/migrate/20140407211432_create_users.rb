class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :gallery_id
      t.integer :comment_id
      t.integer :style_id
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password_digest
      t.string :handle
      t.text :bio

      t.timestamps
    end
  end
end
