Feature: Gig Request Submission
#features/step_definitions/gig_req_steps.rb
Scenario: Fill out a form with no fields
Given I am on the Gig Request Create page
When I click the Create Gig Request link
Then I should see Required Fields Missing

#features/step_definitions/gig_req_steps.rb
Scenario: Fill out a form with not all fields
Given I am on the Gig Request Create page 
When I fill out the form with the following attributes:
      | gig_request_name          | John Smith                 |
      | gig_request_address       | 111 Juniper Dr             |
And I click the Create Gig Request link
Then I should see Required Fields Missing

#features/step_definitions/gig_req_steps.rb
Scenario: Fill out a form with only an optional field
Given I am on the Gig Request Create page 
When I fill out the form with the following attributes:
      | gig_request_phone      | "999-999-9999"            |
And I click the Create Gig Request link
Then I should see Required Fields Missing

#features/step_definitions/gig_req_steps.rb
Scenario: Fill out a form with with all required fields and no optional fields
Given I am on the Gig Request Create page 
When I fill out the form with the following attributes:
      | gig_request_name          | John Smith                 |
      | gig_request_address       | 111 Juniper Dr             |
      | gig_request_email         | "john.smith69@gmail.com"   |
And I click the Create Gig Request link
Then I should see Request Success

#features/step_definitions/gig_req_steps.rb
Scenario: Fill out a form with with all required fields and optional fields
Given I am on the Gig Request Create page 
When I fill out the form with the following attributes:
      | gig_request_name          | John Smith                 |
      | gig_request_address       | 111 Juniper Dr             |
      | gig_request_phone         | "999-999-9999"            |
      | gig_request_email         | "john.smith69@gmail.com"   |
And I click the Create Gig Request link
Then I should see Request Success