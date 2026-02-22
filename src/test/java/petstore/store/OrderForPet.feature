Feature: Realizar una orden para una mascota

  Background:
    * url apiPetStore
    * def NewOrden = read("classpath: petstore/jasonData/Order.json")

  Scenario: Obetener inventario - OK

    Given path 'store', 'inventory'
    When method get
    Then status 200
    And print response