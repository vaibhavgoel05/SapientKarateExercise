Feature: Create a User

  Background:
    * url 'https://reqres.in'
    * header Accept = 'application/json'


  Scenario: Create a User

    Given path '/api/users'
    And request {  "name": "Vaibhav","job": "Goel" }
    When method post
    Then status 201
    And match response == { name : 'Vaibhav' , job : 'Goel' , id: '#notnull' , createdAt : '#notnull' }