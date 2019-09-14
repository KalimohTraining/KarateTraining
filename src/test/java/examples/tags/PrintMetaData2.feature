@regression @print
Feature: runtime metadata
  such as the feature file name and scenario name


  @metadata @Japanese=煙
  Scenario: Regression scenario
    # create a variable and store value of karate.info into the variable
    * def info = karate.info
    # Print the text info and then the value stored in the above variable
    * print 'info:', info
    # Match the contents of info with expected string
    * match info contains { scenarioName: 'Regression scenario'}