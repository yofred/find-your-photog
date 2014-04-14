class Gallery < ActiveRecord::Base
  attr_accessible :photo_id, :title, :user_id, :photographer_id
  
  # validation for creating a new gallery
  validates :title, :presence => true
  
  has_many :photos
  belongs_to :user
  belongs_to :photographer
end
