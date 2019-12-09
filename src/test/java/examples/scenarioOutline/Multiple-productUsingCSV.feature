Feature: scenario outline using a dynamic table
  from a csv file
  Background:
    * url 'http://192.168.1.102:3030'
  @ignore
  Scenario Outline: product name: <name>
    Given path '/products'
    * request {name:<name>, type:<type>,price:<price>, shipping:<shipping>,upc:<upc>,description:<description>, manufacturer:<manufacturer>,model:<model>, url:<url>, image:<image> }
    When method POST
    Then status 201
    * def newProduct = response
    * print 'the value in newProduct is: ', newProduct
    And match newProduct contains {id:'#(newProduct.id)',name:'#(newProduct.name)'}

    Given path '/products/'+ newProduct.id
    When method GET
    Then status 200
    And match response contains {id:'#(newProduct.id)',name:'#(newProduct.name)'}

    # the single cell can be any valid karate expression
    # and even reference a variable defined in the Background
    Examples:
      | read('CreateProduct.csv') |