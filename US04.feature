Feature: Recuperación de contraseña
Como usuario, quiero recuperar mi contraseña en caso de olvido,para 
restablecerla de manera segura y continuar accediendo a la aplicación sin problemas.

Scenario: Solicitud de recuperación de contraseña
Given que el usuario olvidó su contraseña
When selecciona la opción “Olvidé mi contraseña” e ingresa su correo
Then el sistema enviará un enlace de recuperación al correo registrado.
Examples:
    |                                                                    |
    |   ***********************************************************      |
    |   *   Se ha enviado un enlace de recuperación a su correo.  *      |
    |   *                     Revise su bandeja de entrada        *      |
    |   ***********************************************************      |


    |   ***************************************************************      |
    |   *   Para restablecer su contraseña en GreenSpaces, haga clic  *      |
    |   *           en este enlace [enlace de recuperación].          *      |
    |   ***************************************************************      |


Scenario: Confirmación de restablecimiento exitoso
Given que el usuario ha recibido el enlace de recuperación
When ingresa una nueva contraseña en el formulario correspondiente
Then el sistema mostrará un mensaje de “Contraseña restablecida exitosamente”.
Examples:
    |                                                      |
    |   *********************************************      |
    |   *                                           *      |
    |   *    Contraseña restablecida exitosamente   *      |
    |   *                                           *      |
    |   *********************************************      |