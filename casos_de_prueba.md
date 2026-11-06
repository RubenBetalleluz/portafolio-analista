# Casos de prueba: formulario de reembolsos

Pruebas de la regla RF-04: las solicitudes mayores a S/ 100 van también al gerente.

| ID | Tipo de prueba | Pasos | Resultado esperado |
| --- | --- | --- | --- |
| CP-01 | Grupo de los menores | El jefe aprueba una solicitud de S/ 50 | Pasa directo a Contabilidad, sin el gerente |
| CP-02 | Caso del borde | El jefe aprueba una solicitud de exactamente S/ 100 | Pasa directo a Contabilidad, porque la regla dice "mayor a" |
| CP-03 | Grupo de los mayores | El jefe aprueba una solicitud de S/ 150 | Pasa al gerente antes de ir a Contabilidad |

Pruebas de la regla RF-02: el formulario exige fecha, RUC, monto y motivo.

| ID | Tipo de prueba | Pasos | Resultado esperado |
| --- | --- | --- | --- |
| CP-04 | Caso normal | Llenar todos los campos, adjuntar la boleta y enviar | La solicitud pasa al jefe y aparece "Solicitud enviada" |
| CP-05 | Caso de error | Llenar todos los campos menos el RUC y enviar | No se envía, el campo RUC se marca en rojo y aparece "Ingresa el RUC del proveedor" |
