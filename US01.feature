Feature: Registro de usuario 
Como usuario de GreenSpaces, quiero registrarme especificando mis datos 
y ubicación, para poder unirme a la plataforma y participar en eventos o 
proyectos de restauración de espacios verdes cercanos a mi

Scenario: Creación de una cuenta
Given que el usuario está en la pantalla de “Iniciar sesión”
When selecciona la opción “Registrarse” e ingresa sus datos y ubicación
Then el sistema mostrará un mensaje de “Registro exitoso” y redirigirá al usuario a la pantalla principal.
Examples:
    |                                          |
    |   *********************************      |
    |   *     Registro exitoso.         *      |
    |   *   ¡Bienvenido a GreenSpaces!  *      |
    |   *********************************      |

Scenario: Error en el registro
Given que el usuario está en la pantalla de “Registrarse”
When ingresa información incompleta o no válida
Then el sistema mostrará un mensaje de error indicando los campos pendientes
Examples:
    |                                                      |
    |   *********************************************      |
    |   *                    ERROR:                 *      |
    |   *   Complete todos los campos obligatorios  *      |
    |   *********************************************      |