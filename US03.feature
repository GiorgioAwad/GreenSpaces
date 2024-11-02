Feature: Verificación de identidad en Inicio de Sesión
Como usuario, quiero que se validen de forma segura mis datos de autenticación 
al iniciar sesión, para asegurarme de que solo yo tengo acceso autorizado a 
mi cuenta personal.

Scenario: Creación de una cuenta
Given que el usuario está en la pantalla de “Iniciar sesión”
When introduce sus credenciales válidas y hace clic en “Continuar”
Then el sistema verificará su identidad y mostrará la pantalla de inicio de la cuenta.
Examples:
    |                                          |
    |   *********************************      |
    |   *   Inicio de sesión exitoso.   *      |
    |   *     ¡Bienvenido de vuelta!    *      |
    |   *********************************      |

Scenario: Fallo en la verificación de identidad
Given que el usuario está en la pantalla de “Iniciar sesión”
When introduce credenciales incorrectas
Then el sistema mostrará un mensaje de error indicando 
“Credenciales incorrectas, por favor intente nuevamente”.
Examples:
    |                                                      |
    |   *********************************************      |
    |   *                    ERROR:                 *      |
    |   *           Credenciales incorrectas.       *      |
    |   *     Verifique su correo y contraseña      *      |
    |   *********************************************      |