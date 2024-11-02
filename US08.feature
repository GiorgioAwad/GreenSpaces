Feature: Recordatorios y alertas de participación de eventos

Como usuario, quiero configurar alertas y recordatorios de eventos en los 
que estoy registrado, para recibir notificaciones previas y no olvidar 
ninguna actividad a la que me haya inscrito.

Scenario:  Activación de recordatorio
Given que el usuario está registrado en un evento
When selecciona la opción de recibir recordatorios para el evento
Then el sistema activará un recordatorio que se enviará 24 horas antes del evento.
Examples:
    |                                                                    |
    |   ***********************************************************      |
    |   *                  Recordatorio activado.                 *      |
    |   *         Recibirá una alerta 24 horas antes del evento.  *      |
    |   ***********************************************************      |



Scenario: Recepción de alerta de evento
Given que el usuario activó recordatorios para un evento
When faltan 24 horas para el evento
Then el sistema enviará una alerta indicando la proximidad del evento.
Examples:
   
    |   *********************************************************   |
    |   *                    NOTIFICACIÓN                       *   |
    |   *    Su evento "Limpieza del Parque Central" es         *   |
    |   *                   mañana las 9:00 am.                 *   |  
    |   *********************************************************   |