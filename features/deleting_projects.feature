Feature: Deleting projects
    In order to remove needless projects
    As a project manager
    I want to make them dissapear

Scenario: Deleting a project
    Given there is a project called "TextMate2"
    And I am on the homepage
    When I follow "TextMate2"
    And I follow "Delete"
    Then I should see "Project has been deleted"
    Then I should not see "TextMate2"

