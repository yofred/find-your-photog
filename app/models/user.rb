class User < ActiveRecord::Base
  # authorizes user through password_digest
  has_secure_password
  
  attr_accessible :bio, :comment_id, :email, :fname, :gallery_id, :handle, :lname, :password, :password_confirmation, :style_id
  
  # method for creating a string of a user's first and last name
  def full_name
    "#{self.fname.downcase.titleize} #{self.lname.downcase.titleize}"
  end
  
  has_one :preference
  has_many :galleries
  has_many :comments
  has_many :styles
  
end
