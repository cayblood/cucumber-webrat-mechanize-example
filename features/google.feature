Feature: Google Search
  In order to learn something
  As an internet user
  I want to search for information on Google
  
  Scenario: Learn about Iran
    Given I am on google.com
    When I search for "Iran"
    Then I should see search results about Iran