Feature: Viewing tickets
    In order to view the tickets for a project
    As a user
    I want to see them on that project page

Background:
    Given there is a user with the email address "user@ticketee.com" and password "password"
    Given there is a project called "TextMate2"
    And user "user@ticketee.com" has created a ticket for this project:
        |   title           |   description                     |
        |   Make it shiny!  |   Gradients! Starbusts! Oh my!    |
    And there is a project called "Internet Explorer"
    And user "user@ticketee.com" has created a ticket for this project:
        |   title                 |   description      |
        |   Standards compliance  |   Is not a joke    |

    Given I am on the homepage

Scenario: Viewing tickets for a given project
    Given I am on the homepage
    When I follow "TextMate2"
    Then I should see "Make it shiny!"
    And I should not see "Standards compliance"
    When I follow "Make it shiny!"
    Then I should be on the "Make it shiny!" ticket in the "TextMate2" project
    And I should see "Gradients! Starbusts! Oh my!"

    When I follow "Ticketee"
    And I follow "Internet Explorer"
    Then I should see "Standards compliance"
    And I should not see "Make it shiny!"
    When I follow "Standards compliance"
    Then I should be on the "Standards compliance" ticket in the "Internet Explorer" project
    And I should see "Is not a joke"

