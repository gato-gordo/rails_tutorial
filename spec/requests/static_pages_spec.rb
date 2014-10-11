require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home Page" do
    before { visit root_path }
    it { should have_content 'Sample App' }
    it { should have_title 'Ruby on Rails Tutorial Sample App' }
    it { should_not have_title 'Home' }
  end

  describe "Help Page" do
    before { visit help_path }
    it { should have_title 'Sample App | Help' }
    it { should have_content 'Help' }
  end

  describe "About Page" do
    before { visit about_path }
    it { should have_title 'Sample App | About' }
    it { should have_content 'About' }
  end

  describe "Contact Page" do
    before { visit contact_path }
    it { should have_title 'Contact' }
    it { should have_selector 'h1', text: 'Contact' }
  end
end
