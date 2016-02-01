Feature: Merge Articles - access control
    As a user
    I want to be granted or denied access to the merge feature depending on my admin status
    So that I don't do something I'm not permitted to do.
    
    Scenario:
      Given the blog is set up
      And I have set up blog-publisher "John"
      And John has created article "John-2"
      And John has created article "John-3"
      And I go to edit article 2
      And I attempt to merge article 3
      Then I should see "Fail"
    