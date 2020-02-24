Feature: Update a specific User

  Background:
    * url 'https://reqres.in'
    * header Accept = 'application/json'


  Scenario: Update  User with id 2

    Given path '/api/users/2'
    And request {  "name": "morpheus",    "job": "zion resident" }
    When method put
    Then status 200
    And match response == {name : 'morpheus' , job : 'zion resident' , updatedAt : '#notnull'}