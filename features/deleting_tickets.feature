Feature: Deleting tickets
    In order to remove tickets
    As a user
    I want want to press a button and make them dissapear

Background:
    Given there is a user with the email address "user@ticketee.com" and password "password"
    Given "user@ticketee.com" has confirmed their account
    And I am signed in as them
    Given there is a project called "TextMate2"
    And user "user@ticketee.com" has created a ticket for this project:
        |   title           |   description                     |
        |   Make it shiny!  |   Gradients! Starbusts! Oh my!    |
    Given I am on the homepage
    When I follow "TextMate2"
    And I follow "Make it shiny!"

Scenario: Deleting a ticket
    When I follow "Delete"
    Then I should see "Ticket has been deleted"
    And I should be on the project page for "TextMate2"

