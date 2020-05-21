require 'capybara/rspec'

Capybara.default_driver = :selenium

describe "Search functionality", :type => :feature do
  context "Succesful search" do
    it "Should able to sucessfully search selenium on google" do
      visit 'http://www.google.com/'
	  fill_in 'q', :with => 'Selenium'
	  click_button 'Google Search'
      expect(page).to have_content 'Selenium - Web Browser Automation'
	  end
	end
end




