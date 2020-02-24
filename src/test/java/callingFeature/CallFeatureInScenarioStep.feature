Feature: calling another feature file

  Scenario: calling a feature with parameters

    * def result = call read('..\\requests\\GetUserDetails.feature')

    * def myResponse = result.response
    * match myResponse.data[*] contains {id : '#number' , email : '#regex ^([a-z\\d\\.-]+)@([a-z\\d-]+)\\.([a-z]{2,5})(\\.[a-z]{2,5})?$' , first_name : '#string' , last_name : '#string' , avatar : "#regex ^(http(s)?:\\/\\/)?[\\w-]+(\\.[\\w-]+)+[\\w-._~:\\/?#@!$&'()*+,;=.]+$" }