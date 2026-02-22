Feature: Obtener mascota por ID

  Background:
    * url 'https://petstore.swagger.io/v2'

  @FindID
  Scenario: Obtener mascota por ID - OK
    * def petID = call read("classpath: ")

    Given path 'pet', petID
    When method get
    Then status 200
    And print response


  Scenario: Obtener mascota no existene - Not Found

    * def petId = 999999999

    Given path 'pet', petId
    When method get
    Then status 404
    And match response.message == "Pet not found"


  Scenario Outline: Verificar la mascota por id - OK
    Given path 'pet', '<idPet>'
    When method get
    Then status 200
    And print response

    Examples:
      | idPet |
      | 10     |
      | 16     |
      | 12     |