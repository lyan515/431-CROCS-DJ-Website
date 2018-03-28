# As a DJ’s of Aggieland Administrator
# So that I can track pending and completed gig requests and approve/deny pending requests
# I want to be able to view pending/completed requests and approve/deny pending requests
Feature: Admin Dashboard
 
Scenario: As an administrator I approve a gig request
Given I am logged in on "Valid" account
When I click the Admin page link
And I click the Approve link
Then I should see Approve Page
  
Scenario: As an administrator I deny a gig request
Given I am logged in on "Valid" account
When I click the Admin page link
And I click the Deny link
Then I should see Deny Page
