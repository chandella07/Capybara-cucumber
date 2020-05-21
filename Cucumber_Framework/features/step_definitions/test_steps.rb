Given(/^I have opened "([^\"]*)"$/) do |url|
  visit url
end

When(/^I search for "([^\"]*)"$/) do |query|
  fill_in "q", :with => query
  click_button "Google Search"
end

Then(/^I can see "([^\"]*)" on page$/) do |text|
  expect(page).to have_content(text)
end

#-----------------LOGIN----------------------#

When(/^I enter username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  find(:xpath, "//input[@name='UserName']").set(username)
  find(:xpath, "//input[@name='Password']").set(password)
  click_button 'Login'
end

And(/^I log out$/) do
  sleep 2
  expect(page).to have_content('LOGOUT')
  find(:xpath, "//div[@id='cssmenu']/ul/li[1]/a/span").click
end

Then(/^I should be on the login page$/) do
  expect(page).to have_content('Be great at what you do')
end

When(/^I enter username "([^"]*)" and password "([^"]*)" for login$/) do |username, password|
  fill_in "login-email", :with => username
  fill_in "login-password", :with => password
  click_button 'Sign in'
end