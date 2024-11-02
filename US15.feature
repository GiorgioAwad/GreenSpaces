Feature: Gestión de inscripciones y lista de voluntarios confirmados


Como autoridad municipal, quiero poder gestionar las inscripciones y 
mantener un registro de los voluntarios que han confirmado su asistencia, 
para poder planificar y coordinar el evento de manera eficiente.

Scenario:  Visualización de inscripciones de voluntarios
Given qque el organizador está gestionando un evento
When accede a la lista de inscritos
Then el sistema mostrará los nombres y datos de contacto de los voluntarios confirmados.
Examples:
    |                                                                             |
    |   ********************************************************************      |
    |   *             Lista de voluntarios inscritos:                      *      |
    |   *                                                                  *      |
    |   *             1. Nombre: Sebastian Marsuck Rodriguez Maraba        *      |
    |   *                Correo: pepito.marbasdriba@gmail.com              *      |
    |   *                Telefono: +51 912123459                           *      |
    |   ********************************************************************      |



Scenario: Confirmación de asistencia de voluntarios
Given que un voluntario se inscribió a un evento
When el organizador confirme su asistencia
Then el sistema enviará una notificación de confirmación de participación al voluntario.
Examples:
    |   ****************************************************************   |
    |   *                    NOTIFICACIÓN                              *   |
    |   *    Su asistencia al evento "Reforestación de Raimondi"       *   |
    |   *                  Ha sido confirmada                          *   |  
    |   ****************************************************************   |