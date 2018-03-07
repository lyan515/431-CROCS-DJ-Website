Feature: Calendar
#features/step_definitions/calendar_steps.rb
Scenario: Go to Calendar page from Home
Given I am on the Home page
When I click the Calendar link
Then I should see Calendar

Scenario: Go to Home page from Calendar
Given I am on the Calendar page
When I click the Home link
Then I should see Home