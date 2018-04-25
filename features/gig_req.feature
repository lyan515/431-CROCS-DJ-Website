Feature: Gig Request Submission
#features/step_definitions/gig_req_steps.rb
Scenario: Fill out a form with no fields
Given I am on the Gig Request Create page
When I click the Create link
Then I should see Required Fields Missing Gig Request

#features/step_definitions/gig_req_steps.rb
Scenario: Fill out a form with not all fields
Given I am on the Gig Request Create page 
When I fill out the form with the following attributes:
      | gig_request_name          | John Smith                 |
      | gig_request_address       | 111 Juniper Dr             |
And I click the Create link
Then I should see Required Fields Missing Gig Request

#features/step_definitions/gig_req_steps.rb
Scenario: Fill out a form with only an optional field
Given I am on the Gig Request Create page 
When I fill out the form with the following attributes:
      | gig_request_phone      | "999-999-9999"            |
And I click the Create link
Then I should see Required Fields Missing Gig Request

#features/step_definitions/gig_req_steps.rb
Scenario: Fill out a form with with all required fields and no optional fields
Given I am on the Gig Request Create page 
When I fill out the form with the following attributes:
      | gig_request_name          | Jahn Smath                 |
      | gig_request_address       | 211 Juniper Dr             |
      | gig_request_email         | john.smith9@gmail.com    |
      | gig_request_gig_duration  | 2                          |
And I click the Create link
Then I should see Request Success

#features/step_definitions/gig_req_steps.rb
Scenario: Fill out a form with with all required fields and optional fields
Given I am on the Gig Request Create page 
When I fill out the form with the following attributes:
      | gig_request_name          | Jahn Smath                 |
      | gig_request_address       | 211 Juniper Dr             |
      | gig_request_phone         | "899-999-9999"             |
      | gig_request_email         | jahn.smath9@gmail.com    |
      | gig_request_gig_duration  | 2                          |
And I click the Create link
Then I should see Request Success

Scenario: As a client I approve of the final gig request
Given I am on the Gig Request Final page 
When I click the Approve Final link
Then I should see Final Approval Success

Scenario: Edit a current request
Given I am on the Gig Request Index page 
When I click the Edit Gig Request link
And I fill out the form with the following attributes:
      | gig_request_name          | Jahn Smath                 |
And I click the Update link
Then I should see Request Update Success

Scenario: Filter gig requests by name
Given I am on the Gig Request Index page 
When I click the Sort By Name link
Then I should see Filter Success

Scenario: Filter gig requests by name
Given I am on the Gig Request Index page 
When I click the Sort By Name link
Then I should see Filter Success
