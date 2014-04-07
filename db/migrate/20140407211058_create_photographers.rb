class CreatePhotographers < ActiveRecord::Migration
  def change
    create_table :photographers do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password_digest
      t.string :company_name
      t.string :website
      t.integer :comment_id
      t.text :bio
      t.integer :gallery_id
      t.integer :style_id

      t.timestamps
    end
  end
end
