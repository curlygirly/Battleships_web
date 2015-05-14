Feature: Placing a ship
In order to play battleships
  I need to place a ship on the board

  Scenario: Placing a ship
  Given I'm on the place ship page
  Then I see "Where would you like to place your ship?"
  When I enter "A1"
  And I press submit
  Then the ship will appear on the board at that coordinate