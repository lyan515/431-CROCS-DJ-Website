Feature: Dj Portfolio Management

#for any step method already defined(click on a link, fill out form), 
#you don't need to remake it for dj_portfolio, all step methods are global
#all you need to do is add some conditionals to pre-existing methods

#PLEASE make sure your statements are formatted right, if they aren't, tests won't work

#features/step_definitions/gig_req_steps.rb
Scenario: Fill out a form with no fields
Given I am on the DJ Portfolio Create page
When I click the Create link
Then I should see Required Fields Missing Dj Portfolio

#features/step_definitions/gig_req_steps.rb
Scenario: Fill out a form with only an optional field
Given I am on the DJ Portfolio Create page 
When I fill out the form with the following attributes:
      | dj_portfolio_facebook_link      | facebook.com            |
And I click the Create link
Then I should see Required Fields Missing DJ Portfolio

#features/step_definitions/gig_req_steps.rb
Scenario: Fill out a form with with all required fields and no optional fields
Given I am on the DJ Portfolio Create page 
When I fill out the form with the following attributes:
      | dj_portfolio_name          | Jahn Smath                 |
And I click the Create link
Then I should see DJ Portfolio Success

#features/step_definitions/gig_req_steps.rb
Scenario: Fill out a form with with all required fields and optional fields
Given I am on the DJ Portfolio Create page 
When I fill out the form with the following attributes:
      | dj_portfolio_name               | Jahn Smath     |
      | dj_portfolio_bio                | henlo im jahn  |
      | dj_portfolio_facebook_link      | facebook.com   |
      | dj_portfolio_instagram_link     | instagram.com  |
      | dj_portfolio_twitter_link       | twitter.com    |
      | dj_portfolio_soundcloud_link    | soundcloud.com |
      | dj_portfolio_mixcloud_link      | mixcloud.com   |
And I click the Create link
Then I should see DJ Portfolio Success