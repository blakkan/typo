Feature: Merge Articles - comments retained
    As an admin user
    I want comments of both articles retained
    
    Scenario: Check that first author is retained
      Given the blog is set up
      And I am logged into the admin panel
      And I have created article titled "Venus" with text "Goddess of Love" and author "Richard Nixon" with comment "One"
      And I have created article titled "Mars" with text "God of War" and author "George McGovern" with comment "Two"
      And I am on edit page for article titled "Venus"
      And I enter id for article titled "Venus" in merge field
      And I press "Merge"
      And I am on edit page for articled titled "Venus"
      Then I should see a comment "One"
      And I should see a comment "Two"