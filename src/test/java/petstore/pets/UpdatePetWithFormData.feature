Feature: Actuaizar mascota mediante formdata

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: Actualizacion Correcta - OK

    * def petId = 10

    Given path 'pet', petId
    And form field name = 'Firulais'
    And form field status = 'available'
    When method post
    Then status 200
    And print response