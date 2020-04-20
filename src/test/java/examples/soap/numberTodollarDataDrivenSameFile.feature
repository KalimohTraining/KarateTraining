Feature:Sample karate test script for a soap service

  Background:
    * url 'http://www.dataaccess.com/webservicesserver/numberconversion.wso'

  Scenario Outline:Convert a dynamic number to dollar value
    Given request
    """
      <?xml version="1.0" encoding="utf-8"?>
      <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
        <soap:Body>
          <NumberToDollars xmlns="http://www.dataaccess.com/webservicesserver/">
            <dNum><num></dNum>
          </NumberToDollars>
        </soap:Body>
      </soap:Envelope>
    """
    When soap action 'Conversion'
    Then status 200
    * print '\n', response
    * match response /Envelope/Body/NumberToDollarsResponse/NumberToDollarsResult == <expected>
    # To print the converted value to console
    * def temp = /Envelope/Body/NumberToDollarsResponse/NumberToDollarsResult
    * print '\nConverted $ value is: ', temp

    Examples:
      |read('numberToDollar.csv')|
#    |num|expected|
#    |10 |'ten dollars'|
#    |20 |'twenty dollars'|
#    |50 |'fifty dollars'|