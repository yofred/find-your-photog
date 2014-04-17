require 'spec_helper'

describe "Photographers" do
  describe "GET /photographers" do
  
      before :each do
        @photographer = Photographer.create(:fname => "Yofred", :lname => "Moik", :company_name => "Amara Photo", :email => "photographer@example.com", :password => "111", :password_confirmation => "111", :bio => "I love taking photos", :website => "www.amaraphoto.com")
      end
  
      describe "if not current_photographer" do
      
        it "shows if a photographer has any photos" do
          # visit root_path
          # click_link('log out')
          # visit'/login'
          # within("#login") do
          #   fill_in 'email', :with => 'photographer@example.com'
          #   fill_in 'password', :with => '111'
          # end
          # click_button('Photographer Log In')
          visit photographer_path(@photographer.id)
          expect(page).to have_content("#{@photographer.fname} has no photos.")
                  # expect(page).to have_content('You have no photos yet. Add some!')
        end
      end
      
      describe "if current_photographer" do
        
        it "shows if a photographer has any photos" do
        
          visit '/photographers'
          click_link('log in')
          within("#photog_login") do
            fill_in 'email', :with => 'photographer@example.com'
            fill_in 'password', :with => '111'
          end
          click_button('Photographer Log In')
          expect(page).to have_content('You have no photos yet. Add some!')
        end
      end
      

    # describe "if not logged in" do
    #   visit photographer_path(@photographer.id)
    #   expect(page).to have_content('#{@photographer.fname} has no photos.')
    # end
  
  end
end
