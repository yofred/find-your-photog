class Photo < ActiveRecord::Base
  attr_accessible :comment_id, :gallery_id, :photographer_id, :style_id, :photo
  # a file uploader is asosciated with the Photo model
  mount_uploader :photo, PhotoUploader
  
  has_many :galleries
  has_many :comments
  has_many :styles
  belongs_to :photographer
  
  has_many :comment_photos
  has_many :comments, :though => :comment_photos
end
