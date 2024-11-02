Feature: Opción de registro para municipalidades y empresas
Como representante de una municipalidad o empresa, quiero acceder a mi 
cuenta predeterminada proporcionada por GreenSpaces, para gestionar 
eventos y recursos sin tener que pasar por el proceso de registro.

Scenario: Registro de una organización
Given que un representante de una municipalidad o empresa está en la pantalla de “Registro”
When selecciona la opción de “Registro para organizaciones” e ingresa los datos de la entidad
Then el sistema permitirá completar el registro y enviar una solicitud de validación.
Examples:
    |                                                                    |
    |   ***********************************************************      |
    |   *   Registro completado. Su solicitud está en revisión    *      |
    |   *          y será validad en un plazo de 48 horas         *      |
    |   ***********************************************************      |



Scenario: Confirmación de validación
Given que una organización completó el registro
When el equipo de GreenSpaces valida la información
Then se enviará una notificación de “Registro exitoso para organizaciones”.
Examples:
   
    |   *********************************************************   |
    |   *          Su organización ha sido validada.            *   |
    |   *    Ya puede acceder a todas las funcionalidades       *   |
    |   *    de GreenSpaces para coordinadores de proyectos.    *   |  
    |   *********************************************************   |