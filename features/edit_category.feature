Feature: edit a category
  As an admin
  In order permit categorization of entries
  I want to edit a category
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully edit the initial "General" category
    Then I should see "Welcome back, admin!"
    And I follow "Categories"
    Then I should see "Your category slug."
    And I should see "General"
    And I should not see "sample_name"
    When I follow "Edit"
    When I fill in "category_name" with "sample_name"
    And I fill in "category_keywords" with "sample_word_1 sample_word_2"
    And I fill in "category_permalink" with "sample_permalink"
    And I fill in "category_description" with "descriptive text"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "Categories"
    And I should see "Your category slug."
    And I should see "sample_name"
    And I should not see "General"
    And I should see "sample_word_1 sample_word_2"
    And I should see "sample_permalink"
    And I should see "descriptive text"
    
Scenario: Start to edit the changed category, but abandon it
    Then I should see "Welcome back, admin!"
    And I follow "Categories"
    Then I should see "Your category slug."
    And I should see "General"
    And I should not see "sample_name"
    When I follow "Edit"
    When I fill in "category_name" with "xsample_xname"
    And I fill in "category_keywords" with "xsample_xword_1 sample_word_2"
    And I fill in "category_permalink" with "xsample_xpermalink"
    And I fill in "category_description" with "xdescriptive xtext"
    And I follow "Cancel"
    Then I should not see "Category was successfully saved."
    And I should see "Categories"
    And I should see "Your category slug."
    And I should not see "xsample_xname"
    And I should not see "xsample_xword_1 sample_word_2"
    And I should not see "xsample_xpermalink"
    And I should not see "xdescriptive xtext"

