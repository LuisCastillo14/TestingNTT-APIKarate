Feature: Actualizar una mascota existente

  Background:
    * url 'https://petstore.swagger.io/v2'


  Scenario: Subir una imagen para una mascota existente
    * def petId = 4

    Given path 'pet', petId, 'uploadImage'
    And multipart file file = { read: 'perrito.jpg', filename: 'perrito.jpg', contentType: 'image/jpeg' }
    And multipart field additionalMetadata = 'Foto de perfil actualizada'
    When method post
    Then status 200
    And match response.message contains 'perrito.jpg'