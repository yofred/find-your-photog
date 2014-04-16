require 'spec_helper'

describe Photographer do
  
  it "checks if full_name method generates a string of first name and last name" do
    @photographer = Photographer.create(:fname => "Yofred", :lname => "Moik")
    expect(@photographer.full_name).to eq("Yofred Moik")
  end
  
  it "checks if full_name_and_company_name method generates string of full name with business name" do
    @photographer = Photographer.create(:fname => "Yofred", :lname => "Moik", :company_name => "Amara Photo")
    expect(@photographer.full_name_and_company_name).to eq("Yofred Moik of Amara Photo")
  end
  
  it "creates a new photographer" do
    Photographer.create!(:fname => "Yofred", :lname => "Moik", :company_name => "Amara Photo", :email => "blah@gmail.com", :password => "111", :password_confirmation => "111", :bio => "I love taking photos", :website => "www.amaraphoto.com")
    expect(Photographer.count).to eq 1
  end 
  
end