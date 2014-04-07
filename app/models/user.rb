class User < ActiveRecord::Base
  attr_accessible :bio, :comment_id, :email, :fname, :gallery_id, :handle, :lname, :password_digest, :style_id
end
