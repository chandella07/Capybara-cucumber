@search
Feature: Search Google
  As a user
  I want to search for selenium on google

Scenario: Searching for Selenium
  Given I have opened "http://www.google.com/"
  When I search for "Selenium"
  Then I can see "Selenium - Web Browser Automation" on page