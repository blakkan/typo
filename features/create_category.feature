Feature: create a category
  As an admin
  In order permit categorization of entries
  I want to create a category
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create a new category
    Then I should see "Welcome back, admin!"
    And I follow "Categories"
    Then I should see "Your category slug."
    When I fill in "category_name" with "sample_name"
    And I fill in "category_keywords" with "sample_word_1 sample_word_2"
    And I fill in "category_permalink" with "sample_permalink"
    And I fill in "category_description" with "descriptive text"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "Categories"
    And I should see "Your category slug."
    And I should see "sample_name"
    And I should see "sample_word_1 sample_word_2"
    And I should see "sample_permalink"
    And I should see "descriptive text"
    
  Scenario: Abandon creation of a new categoary
    Then I should see "Welcome back, admin!"
    And I follow "Categories"
    Then I should see "Your category slug."
    When I fill in "category_name" with "xsample_xname"
    And I fill in "category_keywords" with "xsample_xword_1 sample_word_2"
    And I fill in "category_permalink" with "xsample_xpermalink"
    And I fill in "category_description" with "xdescriptive xtext"
    And I follow "Cancel"
    Then I should not see "Category was successfully saved."
    And I should see "Categories"
    And I should see "Your category slug."
    And I should not see "xsample_xname"
    And I should not see "xsample_xword_1 sample_word_2x"
    And I should not see "xsample_xpermalinkx"
    And I should not see "xdescriptive xtext"



