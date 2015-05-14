Feature: Shoot at ship
In order to play Battleships
I need to shoot at the board
And try to hit a ship


  Scenario: Shoot at ship
    Given I am on the shoot ship page
    Then I see "Take a shot if you think you are hard enough"
    When I choose to fire at "A5"
    And I press fire
    Then the shot will appear as a miss on the board at that coordinate
