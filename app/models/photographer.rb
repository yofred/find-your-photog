class Photographer < ActiveRecord::Base
  # authorizes user through password_digest
  has_secure_password

  attr_accessible :bio, :comment_id, :company_name, :email, :gallery_id, :photo_id, :fname, :lname, :style_id, :password, :password_confirmation, :website
    
  # validations for photographer signup
  validates :fname, :lname, :email, :company_name, :presence => true
  validates :email, :uniqueness => true
  
  # method to create a string that consists of a photographers first and last names
  def full_name
    "#{self.fname.downcase.titleize} #{self.lname.downcase.titleize}"
  end

  # method to create a string that consists of a photographer first and last name with company name
  def full_name_and_company_name
    "#{self.fname.downcase.titleize} #{self.lname.downcase.titleize} of #{self.company_name}"
  end
  
  has_many :galleries
  has_many :photos
  has_many :comments
end


