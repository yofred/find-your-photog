class Comment < ActiveRecord::Base
  attr_accessible :message, :photo_id, :photographer_id, :user_id
  
  belongs_to :photo
  belongs_to :photographer
  belongs_to :user
end
