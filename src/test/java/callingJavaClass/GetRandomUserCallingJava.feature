Feature: Get Random User Details

  Background:
    * url 'https://reqres.in'
    * header Accept = 'application/json'
    * def doWork =
  """
  function() {
    var GenerateRandomID = Java.type('callingJavaClass.GenerateRandomID');

    return new GenerateRandomID().generateRandomID();
  }
  """
  Scenario: fetch random user details
    * def id = call doWork
    Given path '/api/users/'+id
    When method get
    Then status 200