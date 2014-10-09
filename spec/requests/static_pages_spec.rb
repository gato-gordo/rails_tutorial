require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the right title 'Sample App | Home'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
	 visit '/static_pages/home'
      expect(page).to have_title('Sample App | Home')
    end

    it "should have the content 'Home' " do
      visit '/static_pages/home'
	 expect(page).to have_content('Home')
    end
  end

  describe "Help Page" do
    it "should have the right title 'Sample App | Help'" do
      visit '/static_pages/help'
	 expect(page).to have_title('Sample App | Help')
    end

    it "should have the content 'Help'" do
    	 visit '/static_pages/help'
	 expect(page).to have_content('Help')
    end

  end
  describe "About Page" do
    it "should have the right title 'Sample App | About'" do
      visit '/static_pages/about'
	 expect(page).to have_title('Sample App | About')
    end

    it "should have the content 'About'" do
      visit '/static_pages/about'
	 expect(page).to have_content('About')
    end
  end

  describe "Contact Page" do
    it "should have the right title 'Sample App | Contact'" do
      visit '/static_pages/contact'
	 expect(page).to have_title('Contact')
    end

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
	 expect(page).to have_content('Contact')
    end
  end
end
