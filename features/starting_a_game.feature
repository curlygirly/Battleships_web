Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    When I enter my name as "Jennifer"
    When I click on "Submit"
    Then I should see "Welcome, now you're my bitch! I ORDER you to start playing!"

  Scenario: Not registering
      Given I am on the homepage
      When I follow "New Game"
      When I click on "Submit" and I haven't entered my name
      Then I should see "TELL ME YOUR NAME BITCH!"