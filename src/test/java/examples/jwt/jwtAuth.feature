Feature: To test create, login and access quote using jwt

  Background:
    * url 'http://192.168.56.101:3001'
@ignore
  Scenario: Create user
    Given path 'users'
    And form field username = 'firstuser'
    And form field password = '1234'
    When method POST
    Then status 201
  @ignore
  Scenario: Login and access quote
    Given path 'sessions/create'
    And form field username = 'firstuser'
    And form field password = '1234'
    When method POST
    Then status 201
    * def accessToken = response.access_token

    Given path 'api/protected/random-quote'
    And header Authorization = 'Bearer '+ accessToken
    When method GET
    Then status 200