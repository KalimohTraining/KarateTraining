Feature:My First Karate Feature

  Background:
    # Specify the URL
    * url 'https://swapi.co/api'


  Scenario: People endpoint is up
    #Specify the path
    Given path 'people'

    # here we have specified the method
    When method GET

    # what is the Expected status? in this case it is 200
    Then status 200

  Scenario: Verify Luke Skywalker is at 1
    Given path 'people/1'
    When method GET
    Then status 200
    # Verify (we will use match for this) that the response receieved is for Luke Skywalker
    And match response contains {name:'Luke Skywalker',birth_year: '19BBY'}