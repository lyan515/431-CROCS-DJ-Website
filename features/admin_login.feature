Feature: Admin Login 

Scenario: Login with no account
Given I am logged in on "N/A" account
When I click the Admin Login link
Then I should see "Choose an account"

Scenario: Login with invalid account
Given I am logged in on "Invalid" account
When I click the Admin Login link
And I login with a invalid account
Then I should see "Not an Admin: Please log in as Admin"

Scenario: Login with valid account
Given I am logged in on "Valid" account
When I click the Admin Login link
And I login with a valid account
Then I should see "Signed in as Admin"

Scenario: I clicked the Sign out link
Given I am logged in on "Valid" account
When I click the "Sign out" link
Then I should see "Admin Login"

Scenario: I clicked the Admin Page link
Given I am logged in on "Valid" account
When I click the "Admin Page" link
Then I should see "Listing Gig Requests"