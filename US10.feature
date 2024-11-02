Feature: Búsqueda de eventos por ubicación geográfica

Como usuario, quiero poder buscar eventos comunitarios basados en mi 
ubicación actual o en un área específica, para encontrar fácilmente 
los eventos que se realizan cerca de mí y participar en ellos.

Scenario:  Búsqueda de eventos cerca de la ubicación actual
Given que el usuario está en la pantalla de “Eventos”
When activa la opción de buscar eventos cerca de su ubicación actual
Then el sistema mostrará los eventos disponibles en un radio de 10 km.
Examples:
    |                                                                    |
    |   ***********************************************************      |
    |   *             Lista de eventos Encontrados:               *      |
    |   *                                                         *      |
    |   *             Evento: "Reforestación Parque Sinchi Roca"  *      |
    |   *             Ubicación: 5 km de distancia                *      |
    |   *             Fecha: 12 de Noviembre                      *      |
    |   ***********************************************************      |



Scenario: Búsqueda de eventos en un área específica
Given que el usuario quiere buscar eventos en otra área
When introduce una ubicación específica en el buscador
Then el sistema mostrará eventos disponibles en la ubicación ingresada.
Examples:
    |                                                                    |
    |   ***********************************************************      |
    |   *             Lista de eventos Encontrados:               *      |
    |   *                                                         *      |
    |   *             Evento: "Limpieza Parque Raimondi"          *      |
    |   *             Ubicación: Parque Metropolitano             *      |
    |   *             Fecha: 15 de Noviembre                      *      |
    |   ***********************************************************      |
 