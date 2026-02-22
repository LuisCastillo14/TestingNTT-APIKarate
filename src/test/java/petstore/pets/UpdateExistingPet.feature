Feature: Actualizar una mascota existente

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def JsonCrearMascota = read("classpath:petstore/jasonData/AddPet.json")

  @Update
  Scenario: Actualizar una mascota existente - OK

    Given path 'pet'
    And request JsonCrearMascota.id = 3
    And request JsonCrearMascota.name = "Firu"
    And request JsonCrearMascota
    When method put
    Then status 200
    And print response