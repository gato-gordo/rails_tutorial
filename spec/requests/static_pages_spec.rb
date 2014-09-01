require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the right title 'Sample App | Home'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
	 visit '/static_pages/home'
      expect(page).to have_title('Sample App | Home')
    end
  end
  describe "Help Page" do
    it "should have the right title 'Sample App | Help'" do
      visit '/static_pages/help'
	 expect(page).to have_title('Sample App | Help')
    end
  end
  describe "Abouti Page" do
    it "should have the right title 'Sample App | About'" do
      visit '/static_pages/about'
	 expect(page).to have_title('Sample App | About')
    end
  end
end
