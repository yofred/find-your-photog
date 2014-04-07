class Photographer < ActiveRecord::Base
  has_secure_password
  attr_accessible :bio, :comment_id, :company_name, :email, :gallery_id, :fname, :lname, :style_id, :password, :password_confirmation, :website
  
  # validations for photographer signup
  validates :fname, :lname, :email, :company_name, :presence => true
  validates :email, :uniqueness => true
  
  has_many :photos
  has_many :comments
end
