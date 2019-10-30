Feature: create and delete movie

  As a movie buff
  So that I can create and delete movie
  I want to be able to create and delete movie in home page

Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

  And I am on the RottenPotatoes home page

Scenario: create movie
  When I follow "Add new movie"
  And  I fill in "Title" with "title1"
  And  I fill in "Director" with "director1"
  And  I press "Save Changes"
  Then  I should be on the home page
  And   I should see "title1 was successfully created."

Scenario: delete movie
  Given I am on the details page for "Star Wars"
  And  I press "Delete"
  Then  I should be on the home page
  And   I should see "Movie 'Star Wars' deleted."
