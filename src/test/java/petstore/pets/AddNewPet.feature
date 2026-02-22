@AddPet
Feature: Agregar nueva mascota

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def JsonCrearMascota = read("classpath:petstore/jasonData/AddPet.json")

  @HappyPath @CreatePet
  Scenario: Crear nueva mascota - OK

    Given path 'pet'
    And request JsonCrearMascota
    When method post
    Then status 200
    * def id = response.id
    And match response.id == 988
    And match response.name == "Benji"
    And match response.status == "available"
    And print response
