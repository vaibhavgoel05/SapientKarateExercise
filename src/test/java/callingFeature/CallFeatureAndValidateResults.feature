Feature: calling another feature file

  Background:

    * def result = call read('E:\\SeleniumWorkspaces\\SapientPracticeIntelliJ2\\SapientKarateExercise\\src\\test\\java\\requests\\GetUserDetails.feature')

    * def myResponse = result.response
    * def users = myResponse.data

  Scenario: validate that id field is a number

    * match each users contains { id : '#number' }

  Scenario: validate that first name field is a string


    * match each users contains { first_name : '#string' }
  Scenario: validate that last name field is a string

    * match each users contains { last_name : '#string' }

  Scenario: validate that email field is in correct format

    * match each users contains { email : '#regex ^([a-z\\d\\.-]+)@([a-z\\d-]+)\\.([a-z]{2,5})(\\.[a-z]{2,5})?$' }

  Scenario: validate that avatar field is in correct URL format
    * match each users contains { avatar : "#regex ^(http(s)?:\\/\\/)?[\\w-]+(\\.[\\w-]+)+[\\w-._~:\\/?#@!$&'()*+,;=.]+$" }