# As a DJ’s of Aggieland Administrator
# So that I can track pending and completed gig requests and approve/deny pending requests
# I want to be able to view pending/completed requests and approve/deny pending requests

Scenario: As an administrator I approve a gig request
Given I am on the dashboard page
When I approve a request
Then its request approval attribute should be set to true
  
Scenario: As an administrator I deny a gig request
Given I am on the dashboard page
When I deny a request
Then its request approval attribute should be set to true

Scenario: As an administrator I sort by date
Given I am on the dashboard page
When I sort by date
Then the table of requests should be sorted by date