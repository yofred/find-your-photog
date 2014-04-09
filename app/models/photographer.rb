class Photographer < ActiveRecord::Base
  has_secure_password
  attr_accessible :bio, :comment_id, :company_name, :email, :gallery_id, :fname, :lname, :style_id, :password, :password_confirmation, :website
  
  
  # validations for photographer signup
  validates :fname, :lname, :email, :company_name, :presence => true
  validates :email, :uniqueness => true
  
  def full_name
    "#{self.fname.downcase.titleize} #{self.lname.downcase.titleize}"
  end
  
  def full_name_and_company_name
    "#{self.fname.downcase.titleize} #{self.lname.downcase.titleize} of #{self.company_name} "
  end
  
  has_many :photos
  has_many :comments
end
