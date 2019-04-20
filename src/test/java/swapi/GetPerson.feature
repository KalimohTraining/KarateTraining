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