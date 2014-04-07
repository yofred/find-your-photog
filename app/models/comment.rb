class Comment < ActiveRecord::Base
  attr_accessible :message, :photo_id, :photographer_id, :user_id
end
