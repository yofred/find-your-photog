require 'spec_helper'

describe "Pages" do
  describe "GET /pages" do
    
    it "list photographer-uploaded thumbnails", :js => true do
      visit root_path
      expect(page).to have_content("Find Your Photog Gallery")
    end
  
    it "list 500px thumbnails", :js => true do
      visit root_path
      save_and_open_page
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
end
