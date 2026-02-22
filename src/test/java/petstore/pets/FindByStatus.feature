Feature: Agregar nueva mascota

  Background:
    * url 'https://petstore.swagger.io/v2'


    Scenario Outline: Buscar por estado

      Given path 'pet', 'findByStatus'
      And param status = '<status>'
      When method get
      Then status 200

      Examples:
      | status     |
      | available  |
      | pending    |
      | sold       |

  Scenario: Obtener mascotas por mas de un estado

    Given path 'pet', 'findByStatus'
    And param status = 'available,pending'
    When method get
    Then status 200
