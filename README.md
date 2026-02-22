# Escuela Testing - Automatización API con Karate

Este proyecto contiene pruebas automatizadas para la API de PetStore usando Karate y JUnit5, como parte de la formación en automatización de pruebas.

## Estructura del proyecto

- `src/test/java/petstore/pets/`: Pruebas de endpoints relacionados con mascotas (features y runner).
- `src/test/java/petstore/store/`: Pruebas de endpoints de la tienda (features y runner).
- `src/test/java/petstore/users/`: Pruebas de endpoints de usuarios (features y runner).
- `src/test/java/petstore/jasonData/`: Archivos JSON de datos de prueba.
- `karate-config.js`: Configuración de entornos para Karate.
- `pom.xml`: Archivo de configuración de Maven y dependencias.

## Dependencias principales

- Java 17
- Maven
- Karate (karate-junit5)

## ¿Cómo ejecutar las pruebas?

1. Asegúrate de tener Java y Maven instalados.
2. Ejecuta el siguiente comando en la raíz del proyecto:

   ```
   mvn clean test -Dtest=UsersRunner -Dkarate.options="--tags @regresion" -Dkarate.env=dev
   ```

3. Los reportes se generan en la carpeta `target/karate-reports`.

## Notas

- El proyecto está orientado a prácticas de automatización y aprendizaje.
- Puedes modificar los archivos `.feature` para agregar o ajustar escenarios.
- La configuración de entornos se encuentra en `karate-config.js`.

