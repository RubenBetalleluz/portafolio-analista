# Proyecto integrador: Boticas Vida Sana

Caso de una cadena de tres boticas en Lima que perdía ventas por falta de stock y pagaba mercadería que no llegaba. Lo resolví de punta a punta: negocio, procesos, requerimientos, plan, datos y seguridad.

## Hallazgos

- La falta de stock costó **S/ 1,910 en noviembre**, unos **S/ 23,000 al año**.
- El **63%** de la pérdida estaba en una sola botica.
- La reposición tardaba **7 días**, porque el stock se contaba a mano una vez por semana.
- Las facturas se pagaban sin compararlas con lo recibido.
- **Causa raíz:** no había un sistema compartido entre las boticas, la administración y Contabilidad.

## Propuesta

Un sistema en la nube con stock en tiempo real, alerta de stock mínimo, registro de lo recibido y pago solo si lo pedido, lo recibido y lo facturado coinciden. Plan de 8 semanas en dos sprints.

**Meta:** reposición de 7 a 4 días y días sin stock de 32 a menos de 5 al mes.

## Archivos

| Archivo | Qué contiene | Herramienta |
| --- | --- | --- |
| `ventas_perdidas.sql` | Venta perdida por botica | SQL |
| `presentacion.pdf` | Presentación final para la dueña | Slides |

## Herramientas

Excel · SQL · Power BI · Python · BPMN · Scrum · Gestión de riesgos
