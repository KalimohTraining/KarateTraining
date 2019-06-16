Feature:GET method for SINGLE USER api

  Background:
    * url 'https://reqres.in'


  Scenario: GET method should return 200
    Given path '/api/users/2'
    When method GET
    Then status 200