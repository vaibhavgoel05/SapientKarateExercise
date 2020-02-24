Feature: Register a User

  Background:
    * url 'https://reqres.in'
    * header Accept = 'application/json'


  Scenario: Register a User

    Given path '/api/register'
    And request { email : 'eve.holt@reqres.in', password : 'pistol' }
    When method post
    Then status 200
    And match response == { id: '#number' , token : '#notnull' }