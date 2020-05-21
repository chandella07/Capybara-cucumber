@login
Feature: Login Functionality 
	As a site user
	I want to log in to my account
	So I can use the system

Scenario: Successful Login
	Given I have opened "http://executeautomation.com/demosite/Login.html"
	When I enter username "test@linkedin.com" and password "something"
	Then I can see "Execute Automation Selenium Test Site" on page
	And I log out
	
Scenario: Unsuccessful Login
	Given I have opened "https://www.linkedin.com/"
	When I enter username "test@linkedin.com" and password "something" for login
	Then I should be on the login page