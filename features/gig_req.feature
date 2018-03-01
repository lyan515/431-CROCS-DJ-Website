Feature: Gig Request Submission

Scenario: Fill out a form with no fields
Given I am on the "Gig Request" page
When I click the Submit Form button
Then I should see "Required Fields Missing"

Scenario: Fill out a form with not all fields
Given I am on the "Gig Request" page 
When fill out the form with the following attributes:
      | form_name      | "John Smith"               |
      | form_address   | "111 Juniper Dr"           |
      | form_email     | "john.smith69@gmail.com"   |
And I click the Submit Form button
Then I should see "Required Fields Missing"

Scenario: Fill out a form with only an optional field
Given I am on the "Gig Request" page 
When fill out the form with the following attributes:
      | form_phone      | "999-999-9999"            |
And I click the Submit Form button
Then I should see "Required Fields Missing"

Scenario: Fill out a form with with all required fields and no optional fields
Given I am on the "Gig Request" page 
When fill out the form with the following attributes:
      | form_name      | "John Smith"               |
      | form_address   | "111 Juniper Dr"           |
      | form_email     | "john.smith69@gmail.com"   |
      | form_date      | "01/01/2019"               |
      | form_time      | "7:00PM"                   |
And I click the Submit Form button
Then I should see "Success Page"

Scenario: Fill out a form with with all required fields and optional fields
Given I am on the "Gig Request" page
When fill out the form with the following attributes:
      | form_name      | "John Smith"               |
      | form_address   | "111 Juniper Dr"           |
      | form_phone     | "999-999-9999"             |
      | form_email     | "john.smith69@gmail.com"   |
      | form_date      | "01/01/2019"               |
      | form_time      | "7:00PM"                   |
And I click the Submit Form button
Then I should see "Success Page"