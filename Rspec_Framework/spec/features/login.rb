require 'capybara/rspec'

Capybara.default_driver = :selenium

describe "Login functionality", :type => :feature do
  context "Succesful login" do
    it "Should able to login sucessfully" do
      visit 'http://executeautomation.com/demosite/Login.html'
	  find(:xpath, "//input[@name='UserName']").set('username')
      find(:xpath, "//input[@name='Password']").set('password')
      click_button 'Login'
	  sleep 2
      expect(page).to have_content 'Automation'
	end
	
  context "Unsuccesful login" do
    it "Should not be able to login" do
      visit 'https://www.linkedin.com/'
	  fill_in "login-email", :with => 'username'
	  fill_in "login-password", :with => 'password'
      click_button 'Sign in'
	  sleep 2
      expect(page).to have_content('Be great at what you do')
	end
  end
  end
end
