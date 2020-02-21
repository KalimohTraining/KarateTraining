Feature: add product and verify it

  Background:
    * url 'http://192.168.1.105:3030'
  @ignore
  Scenario Outline: create Single products and verify their id and name
    Given path '/products'
    And request {name:<name>, type:<type>,price:<price>, shipping:<shipping>,upc:<upc>,description:<description>, manufacturer:<manufacturer>,model:<model>, url:<url>, image:<image> }
    When method POST
    Then status 201
    And def newProduct = response

    Given path '/products/'+newProduct.id
    When method GET
    Then status 200
    And match response contains {id:'#(newProduct.id)',name:'#(newProduct.name)'}


    Examples:
      |name  |type  |price|shipping|upc|description         |manufacturer  |model  |url|image|
      |Demo1 |type1 |1    |1234567 |abc|Demo description 1  |manufacturer1 |model1 |url|image|