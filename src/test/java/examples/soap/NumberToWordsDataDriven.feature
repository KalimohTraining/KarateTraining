Feature: 
    test of soap

Background:
* url 'http://www.dataaccess.com/webservicesserver/numberconversion.wso'

Scenario Outline: soap 1.1
Given request
"""
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    <NumberToWords xmlns="http://www.dataaccess.com/webservicesserver/">
		<ubiNum><num></ubiNum>
    </NumberToWords>
  </soap:Body>
</soap:Envelope>
"""

When soap action 'Conversion'
Then status 200

* print '\n', response

#working
* match response /Envelope/Body/NumberToWordsResponse/NumberToWordsResult == <expected>

 * def temp = /Envelope/Body/NumberToWordsResponse/NumberToWordsResult
 * print 'This will print the value-- \n', temp


 Examples:
  | read('NumberToWords.csv') |
# Either use the external file or can be used as below 
# |num|expected|
# |205|'two hundred and five '|
# |10|'ten '|