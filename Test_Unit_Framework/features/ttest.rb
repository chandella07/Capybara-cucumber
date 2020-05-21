require 'capybara'
require 'capybara/dsl'
require 'test/unit'

class Ttest < Test::Unit::TestCase
  include Capybara::DSL
  
  def setup
    Capybara.default_driver = :selenium
    puts "\nIn setup method"
  end
  
  def test_search
    visit "http://www.google.com"
	fill_in "q", :with => 'cucumber'
    click_button "Google Search"
	page.has_content?('BDD')
  end
  
  def teardown
    puts "In teardown method"
    page.driver.browser.close
  end
end