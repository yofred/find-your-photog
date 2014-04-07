class Photo < ActiveRecord::Base
  attr_accessible :comment_id, :gallery_id, :photographer_id, :style_id
  
  has_many :galleries
  has_many :comments
  has_many :styles
  belongs_to :photographer
end
