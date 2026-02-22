Feature: Eliminar una mascota

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def JsonCrearMascota = read("classpath:petstore/jasonData/AddPet.json")
  @Delete
  Scenario: Eliminar una mascota - OK

    * def create = call read("classpath:petstore/pets/AddNewPet.feature@CreatePet")
    * def id = create.id
    Given path 'pet', id
    And header api_key = 'api-key'
    When method delete
    Then status 200

    Given path 'pet', id
    When method get
    Then status 404