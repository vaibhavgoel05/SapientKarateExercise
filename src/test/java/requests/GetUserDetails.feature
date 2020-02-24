Feature: Get All User Details

  Background:
    * url 'https://reqres.in'
    * header Accept = 'application/json'

  Scenario: Get all users

    Given path '/api/users'
    When method get
    Then status 200