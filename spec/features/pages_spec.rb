require 'spec_helper'

# save_and_open_page

describe "Pages" do
  describe "GET /pages" do
    
    it "list photographer-uploaded thumbnails", :js => true do
      visit root_path
      expect(page).to have_content("Find Your Photog Gallery")
    end
  
    it "list 500px thumbnails", :js => true do
      visit root_path
      expect(page).to have_content("500px Gallery")
    end
  
    it "show Find Your Photog thumbnails and hide 500px thumbnails", :js => true do
      visit root_path
      click_button("Find Your Photog")
      page.should have_selector('#findyourphotog', visible: true)
      page.should have_selector('#f00px', visible: false)
    end
  
    it "show 500px thumbnails and hides Find Your Photog thumbnails", :js => true do
      visit root_path
      click_button("500px")
      page.should have_selector('#findyourphotog', visible: false)
      page.should have_selector('#f00px', visible: true)
    end
  end
  
  describe "the signin process", :type => :feature do
    before :each do
      Photographer.create(:fname => "Yofred", :lname => "Moik", :company_name => "Amara Photo", :email => "photographer@example.com", :password => "111", :password_confirmation => "111", :bio => "I love taking photos", :website => "www.amaraphoto.com")
      User.create(fname: 'John', lname: 'Doe', handle: 'engaged_couple_21', email: 'user@example.com', password: '111', bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
    end

    it "signs in a photographer" do
      visit '/login'
      within("#photog_login") do
        fill_in 'email', :with => 'photographer@example.com'
        fill_in 'password', :with => '111'
      end
      click_button('Photographer Log In')
      expect(page).to have_content('You have successfully logged in!')
      # expect(page).to have_content('You have no photos yet. Add some!')
    end
    
    it "signs in a user" do
      visit '/login'
      within("#login") do
        fill_in 'email', :with => 'user@example.com'
        fill_in 'password', :with => '111'
      end
      click_button('User Log In')
      expect(page).to have_content('You have successfully logged in!')
    end  
    
  end
  

  
end
