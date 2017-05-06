Feature: Add a new blog entry
  
  As a blogger
  So that I can easily contribute content to my blog
  I want to be able to add a new blog entry 
  
  Scenario: As a blogger I want to be able to navigate from homepage to the new article form
    Given I am on the home page
    When I click on the "Article List" link
    Then I should be on the "Listing articles" page
    When I click on the "New article" link
    Then I should be on the "New article" page
    And I should see the "Title" field
    And I should see the "Text" field


  As a blogger
  you can open up a newly created article 
  
  Scenario: As a blogger I want to open up a newly created article
    Given I am on the home page
    When I click on the "Create Article" link
    Then I should be on the "Listing articles" page
    When I click on the "Apple Watch" link
    Then I should be on the "Apple Watch" page
    