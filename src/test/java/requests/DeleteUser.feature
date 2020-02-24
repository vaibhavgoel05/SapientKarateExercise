Feature: Delete a User

  Background:
    * url 'https://reqres.in'
    * header Accept = 'application/json'

  Scenario: Delete User with id 2

    Given path '/api/users/2'
    When method delete
    Then status 204