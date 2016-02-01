Feature: Merge Articles - both text present
    As an admin user
    I want contents of both articles to combine
    
    Background:
      Given the blog is set up
      And I am logged into the admin panel
      And I have created article titled "Venus" with text "Goddess of Love" and author "Richard Nixon"
      And I have created article titled "Mars" with text "God of War" and author "George McGovern"


    Scenario: Error case- Other article does not exist
      Given I am on edit page for article titled "Venus"
      And I enter "7797" in merge field
      And I press "Merge"
      Then I should see "Failure"

      
      
    Scenario: Error case- Other article is same as this one
      Given I am on edit page for article id "2"
      And I enter id "3" in merge field
      And I press "Merge"
      Then I should see "Fail"
      
      
      
    Scenario: Sunshine case- verify text from combined article and that other article is deleted
      Given I am on edit page for article id "2"
      And I enter id "3" in merge field
      And I press "Merge"
      Then I should not see "Fail"
      Then I am on edit page for article id "2"
      And I should see "Goddess of Love"
      And I should see "God of War"
      # And There should be no article id 3
