Feature: Gig Request Submission

Scenario: Fill out a form with no fields
Given I am on the "Gig Request" page
When I click the "Submit Form" link
Then I should see "Required Fields Missing"

Scenario: Fill out a form with not all fields
Given I am on the "Gig Request" page 
When fill out the form with the following attributes:
      | name      | "John Smith"               |
      | address   | "111 Juniper Dr"           |
      | email     | "john.smith69@gmail.com"   |
And I click the "Create Gig Request" link
Then I should see "Required Fields Missing"

Scenario: Fill out a form with only an optional field
Given I am on the "Gig Request" page 
When fill out the form with the following attributes:
      | phone      | "999-999-9999"            |
And I click the "Create Gig Request" link
Then I should see "Required Fields Missing"

Scenario: Fill out a form with with all required fields and no optional fields
Given I am on the "Gig Request" page 
When fill out the form with the following attributes:
      | name      | "John Smith"               |
      | address   | "111 Juniper Dr"           |
      | email     | "john.smith69@gmail.com"   |
      | date      | "01/01/2019"               |
      | time      | "7:00PM"                   |
And I click the "Create Gig Request" link
Then I should see "Success Page"

Scenario: Fill out a form with with all required fields and optional fields
Given I am on the "Gig Request" page
When fill out the form with the following attributes:
      | name      | "John Smith"               |
      | address   | "111 Juniper Dr"           |
      | phone     | "999-999-9999"             |
      | email     | "john.smith69@gmail.com"   |
      | date      | "01/01/2019"               |
      | time      | "7:00PM"                   |
And I click the "Create Gig Request" link
Then I should see "Success Page"