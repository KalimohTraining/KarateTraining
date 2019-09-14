@smoke
Feature: runtime metadata
  such as the feature file name and scenario name

  @Japanese=煙 @Spanish=Funcional
  Scenario: Smoke different languages in tag
    # create a variable and store value of karate.info into the variable
    * def info = karate.info
    # Print the text info and then the value stored in the above variable
    * print 'info:', info
    # Match the contents of info with expected string
    * match info contains {scenarioName:'Smoke different languages in tag',featureFileName:'PrintMetadata1.feature'}