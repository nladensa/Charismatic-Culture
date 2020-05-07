Feature: Search a blog entry
  
  As a blogger
  So that I can easily find content my blog
  I want to be able to search blog entry
  
Scenario: As a blogger I want to be able to navigate from the homepage to the search form
  Given I am on the home page
  When I click on the "My Blog" link
  Then I should be on the "Listing Articles" page
  And I should see the "search" field
  # When I click on the "Seach" button