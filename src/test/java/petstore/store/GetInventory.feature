
Feature: Obtener inventario de la tienda de mascotas

  Background:
    * url apiPetStore

  Scenario: Obetener inventario - OK

    Given path 'store', 'inventory'
    When method get
    Then status 200
    And print response