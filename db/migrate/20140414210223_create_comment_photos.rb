class CreateCommentPhotos < ActiveRecord::Migration
  def change
    create_table :comment_photos do |t|

      t.timestamps
    end
  end
end
