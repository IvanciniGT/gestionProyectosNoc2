# Cuadros de mando en un servicio NOC

Un cuadro de mando no es simplemente una colección de gráficas.

Un cuadro de mando es una herramienta de gestión que permite entender el estado de un servicio, controlar su ritmo de trabajo, detectar riesgos y tomar decisiones.

En un NOC o en un servicio gestionado de red, un cuadro de mando debe ayudar a responder preguntas como:

- ¿Qué tenemos ahora mismo encima de la mesa?
- ¿De qué tipo es el trabajo abierto?
- ¿En qué estado está?
- ¿Qué está bloqueado?
- ¿Qué va con retraso?
- ¿Qué entra?
- ¿Qué sale?
- ¿Dónde se acumula el trabajo?
- ¿Qué necesita atención hoy?
- ¿Qué puedo explicar al cliente o a dirección con datos?

La idea fundamental es:

> Un cuadro de mando operativo sirve para conducir el servicio.

No se trata de hacer análisis complejos desde el primer día.

Primero necesitamos visibilidad.  
Después necesitamos entender el ritmo.  
Y, en un nivel más avanzado, podemos entrar en análisis.

---

# 1. El cuadro de mando nace del modelo de trabajo

Un cuadro de mando no nace en la herramienta de reporting.

Nace en el modelo de trabajo.

Antes de pedir buenos cuadros de mando, hay que tener claro cómo se gestiona el trabajo vivo del servicio:

- tipos de trabajo;
- estados;
- atributos;
- bloqueos;
- evidencias;
- relaciones entre asuntos;
- criterios de cierre.

Si los tipos están mal definidos, el cuadro miente.  
Si los estados no se actualizan, el cuadro miente.  
Si no se marcan bloqueos, el cuadro miente.  
Si se cierran asuntos sin evidencia, el cuadro miente.

Un cuadro de mando solo es tan fiable como el modelo de trabajo y los datos que lo alimentan.

> Si el flujo de trabajo es confuso, el cuadro de mando solo dibuja mejor la confusión.

---

# 2. Cuadro operativo frente a BI

Conviene distinguir entre un **cuadro de mando operativo** y un sistema de **BI / análisis**.

| Concepto | Objetivo |
|---|---|
| **Cuadro de mando operativo** | Ver el estado del servicio y decidir qué hacer ahora. |
| **BI / análisis** | Cruzar variables, buscar causas, detectar patrones y mejorar el servicio a medio/largo plazo. |

---

## 2.1. Cuadro de mando operativo

Un cuadro operativo responde a preguntas inmediatas:

- ¿Qué está abierto?
- ¿Qué está bloqueado?
- ¿Qué está pendiente de aprobación?
- ¿Qué está en ejecución?
- ¿Qué está en validación?
- ¿Qué se ha cerrado esta semana?
- ¿Qué cambios están planificados?
- ¿Qué incidencias siguen activas?
- ¿Qué asuntos requieren atención?

Es una herramienta para gestionar el presente del servicio.

> El cuadro operativo es la cabina de control.

Sirve para conducir el servicio día a día o semana a semana.

---

## 2.2. BI / análisis

El BI aparece cuando empezamos a cruzar muchas variables para entender causas, patrones, tendencias o comportamientos históricos.

Responde a preguntas como:

- ¿Por qué se bloquean los cambios?
- ¿Qué tipos de peticiones vienen peor definidas?
- ¿Qué proveedor genera más retrasos?
- ¿Qué centros concentran más incidencias?
- ¿Qué tipos de cambio fallan más?
- ¿Qué relación hay entre urgencia y errores?
- ¿Qué patrones se repiten en los últimos meses?

Esto ya no es simplemente conducir el servicio en el día a día.  
Es analizar cómo se comporta el servicio para mejorarlo.

> El cuadro operativo sirve para conducir.  
> El BI sirve para entender y mejorar.

---

# 3. Tres niveles de información

En un cuadro de mando podemos distinguir tres niveles:

1. Cantidades.
2. Tiempos.
3. Análisis.

---

## 3.1. Cantidades

Las cantidades aportan visibilidad.

Sirven para saber qué hay, cuánto hay y cómo está distribuido el trabajo.

Responden a preguntas como:

- ¿Cuántos asuntos tengo abiertos?
- ¿Cuántos son peticiones?
- ¿Cuántos son cambios?
- ¿Cuántos son incidencias?
- ¿Cuántos están pendientes de aprobación?
- ¿Cuántos están bloqueados?
- ¿Cuántos se han cerrado esta semana?

Las cantidades permiten ver el estado del servicio.

Ejemplos:

- número de peticiones abiertas;
- número de cambios abiertos;
- número de incidencias activas;
- número de problemas abiertos;
- número de mejoras en curso;
- número de proyectos activos;
- número de tareas abiertas;
- número de asuntos bloqueados;
- número de asuntos pendientes de información;
- número de asuntos pendientes de aprobación;
- número de asuntos en validación;
- número de asuntos cerrados en la semana.

Las cantidades pueden representar una **foto fija** o un **movimiento**.

---

### 3.1.1. Cantidades de estado

Indican qué hay ahora mismo.

Ejemplos:

- asuntos abiertos;
- asuntos por tipo;
- asuntos por estado;
- cambios pendientes;
- incidencias activas;
- bloqueos actuales;
- asuntos en validación.

Responden a la pregunta:

> ¿Qué tengo ahora mismo encima de la mesa?

---

### 3.1.2. Cantidades de ritmo

Indican cuánto entra y cuánto sale.

Ejemplos:

- peticiones creadas esta semana;
- incidencias cerradas esta semana;
- cambios ejecutados esta semana;
- tareas completadas;
- mejoras finalizadas;
- nuevos asuntos frente a asuntos cerrados.

Responden a la pregunta:

> ¿Cuánto se está moviendo el servicio?

---

## 3.2. Tiempos

Los tiempos permiten entender el ritmo real del servicio.

No basta con saber cuántos asuntos hay. También necesitamos saber cuánto tardan en avanzar.

Los tiempos responden a preguntas como:

- ¿Cuánto tarda una petición en clasificarse?
- ¿Cuánto tarda un cambio en aprobarse?
- ¿Cuánto tiempo permanece bloqueado un asunto?
- ¿Cuánto pasa desde la aprobación hasta la ejecución?
- ¿Cuánto tarda la validación?
- ¿Cuánto tarda el cierre?
- ¿Dónde se acumula la espera?

Ejemplos de tiempos útiles:

- tiempo desde entrada hasta análisis;
- tiempo desde entrada hasta clasificación;
- tiempo desde clasificación hasta priorización;
- tiempo esperando información;
- tiempo esperando aprobación;
- tiempo desde aprobación hasta planificación;
- tiempo desde planificación hasta ejecución;
- tiempo desde ejecución hasta validación;
- tiempo desde validación hasta cierre;
- tiempo total desde entrada hasta cierre;
- tiempo medio de resolución de incidencias;
- tiempo medio de bloqueo;
- antigüedad de asuntos abiertos;
- antigüedad de asuntos bloqueados;
- antigüedad de asuntos pendientes de aprobación.

Las cantidades dicen qué hay.  
Los tiempos dicen si el flujo se mueve o se atasca.

> Las cantidades me dicen que tengo trabajo pendiente.  
> Los tiempos me dicen si ese trabajo está vivo o se está pudriendo.

---

## 3.3. Análisis

El análisis aparece cuando mezclamos variables para entender causas, patrones o comportamientos.

Este nivel ya se acerca más al BI que al cuadro operativo puro.

Ejemplos:

- bloqueos por causa;
- bloqueos por responsable de desbloqueo;
- tiempo medio de aprobación por tipo de cambio;
- incidencias recurrentes por servicio;
- asuntos mal definidos por origen;
- cambios fallidos por tipo;
- retrasos por proveedor;
- peticiones incompletas por área solicitante;
- relación entre urgencia y errores;
- asuntos bloqueados por centro, servicio o dependencia.

Este nivel responde a preguntas como:

- ¿Por qué se atasca el flujo?
- ¿Dónde se producen más retrasos?
- ¿Qué causas se repiten?
- ¿Qué áreas generan más bloqueo?
- ¿Qué tipo de trabajo tiene más riesgo?
- ¿Dónde debemos mejorar el proceso?

> Contar cosas no es analizar.  
> Contar cosas es empezar a ver.  
> El análisis aparece cuando cruzamos variables para entender qué está pasando.

---

# 4. Métricas automáticas y métricas de disciplina

No todas las métricas tienen la misma fiabilidad.

En un modelo NetDevOps conviene distinguir entre:

1. Métricas automáticas.
2. Métricas de disciplina.

Esta distinción es importante porque no todos los datos nacen igual.

---

## 4.1. Métricas automáticas

Las métricas automáticas son datos que genera la propia maquinaria técnica del flujo.

No dependen tanto de que alguien actualice manualmente un estado.

Suelen salir de herramientas como:

- Git;
- pipelines;
- Ansible / AAP;
- Terraform;
- herramientas de testing;
- herramientas de monitorización;
- sistemas de despliegue;
- sistemas de validación.

Ejemplos:

- número de commits;
- cambios versionados;
- merge requests abiertas;
- merge requests aprobadas;
- validaciones pasadas;
- validaciones fallidas;
- pipelines ejecutados;
- pipelines fallidos;
- despliegues preparados;
- jobs de Ansible ejecutados;
- jobs correctos;
- jobs fallidos;
- smoke tests pasados;
- smoke tests fallidos;
- tiempo de ejecución de un pipeline;
- tiempo de ejecución de un playbook;
- cambios con diff asociado;
- cambios con prueba asociada;
- despliegues por semana.

Estas métricas son muy valiosas porque el propio sistema las genera.

> La herramienta no opina.  
> La herramienta registra lo que ha pasado.

---

## 4.2. Métricas de disciplina

Las métricas de disciplina dependen de que las personas usen correctamente el modelo de trabajo.

Ejemplos:

- estados actualizados a tiempo;
- bloqueos marcados correctamente;
- motivo del bloqueo informado;
- responsable de desbloqueo asignado;
- prioridad revisada;
- fecha objetivo mantenida;
- cierre correctamente documentado;
- evidencias adjuntadas;
- relación con ticket registrada;
- relación con cambio registrada.

Estas métricas son necesarias, pero pueden mentir si el modelo no está adoptado.

Por ejemplo:

- si nadie marca bloqueos, parecerá que no hay bloqueos;
- si nadie actualiza estados, parecerá que el trabajo no avanza;
- si se cierran tareas sin evidencia, parecerá que todo está completado;
- si la prioridad no se revisa, el cuadro mostrará una prioridad falsa.

Por eso, al principio, conviene empezar apoyándose en métricas que el propio flujo genera de forma objetiva y después ir incorporando métricas de disciplina según el modelo se consolida.

> Primero, datos objetivos generados por el flujo.  
> Después, métricas de disciplina cuando el modelo de trabajo esté adoptado.

---

## 4.3. Relación con NetDevOps

NetDevOps no consiste solo en automatizar tareas técnicas.

También consiste en generar evidencias, eventos y datos que alimentan la gestión del servicio.

Si tengo Git, tengo historia.  
Si tengo pipelines, tengo validaciones.  
Si tengo pruebas, tengo resultados objetivos.  
Si tengo Ansible o AAP, tengo ejecuciones trazables.  
Si tengo monitorización, tengo comportamiento del servicio.  
Si conecto todo eso con el modelo de trabajo, tengo datos para el cuadro de mando.

> La automatización no solo ejecuta.  
> También observa, registra y evidencia.

---

# 5. Qué debe mostrar un cuadro operativo

Un cuadro de mando operativo de NOC debería mostrar, como mínimo, información sobre:

1. Trabajo abierto.
2. Trabajo por tipo.
3. Trabajo por estado.
4. Bloqueos.
5. Ritmo de entrada y salida.
6. Tiempos principales.
7. Riesgos o asuntos que requieren atención.
8. Próximas acciones relevantes.

---

## 5.1. Trabajo abierto

Primera pregunta:

> ¿Qué tengo ahora mismo encima de la mesa?

Información útil:

- total de asuntos abiertos;
- asuntos nuevos;
- asuntos en curso;
- asuntos en validación;
- asuntos pendientes de cierre;
- asuntos cerrados recientemente.

Esto da una visión rápida de la carga actual del servicio.

---

## 5.2. Trabajo por tipo

Segunda pregunta:

> ¿De qué naturaleza es el trabajo abierto?

Tipos habituales:

- peticiones de servicio;
- cambios;
- incidencias;
- problemas;
- mejoras;
- proyectos / iniciativas;
- tareas.

Ejemplo de lectura:

- muchas incidencias activas indican presión operativa;
- muchos cambios pendientes indican carga de planificación y aprobación;
- muchas mejoras abiertas pueden indicar deuda de servicio;
- muchos problemas abiertos pueden indicar recurrencia o falta de causa raíz;
- muchas tareas sueltas pueden indicar falta de agrupación o falta de modelo.

El tipo ayuda a entender cómo debe gestionarse el trabajo.

---

## 5.3. Trabajo por estado

Tercera pregunta:

> ¿Dónde está ahora mismo el trabajo dentro del flujo?

Estados habituales:

- nuevo;
- en análisis / clasificación;
- pendiente de información;
- priorización pendiente;
- pendiente de aprobación;
- planificado;
- en ejecución;
- en validación;
- bloqueado;
- resuelto / completado;
- cerrado;
- cancelado.

El estado ayuda a entender qué necesita el trabajo para avanzar.

Ejemplo de lectura:

- muchos asuntos en “nuevo” indican retraso en la revisión inicial;
- muchos asuntos en “pendiente de información” indican entradas incompletas;
- muchos asuntos en “pendiente de aprobación” indican cuello de botella en gobierno;
- muchos asuntos en “en validación” indican retraso en cierre;
- muchos asuntos bloqueados indican dependencias que deben gestionarse.

---

# 6. Bloqueos

Los bloqueos deben tener visibilidad propia.

Un asunto bloqueado es un asunto que debería avanzar, pero no puede hacerlo por una dependencia concreta.

Ejemplos de causas de bloqueo:

- falta información;
- falta aprobación;
- falta ventana de cambio;
- falta respuesta del cliente;
- falta respuesta del proveedor;
- falta línea de operador;
- falta acceso;
- falta compra;
- falta decisión interna;
- dependencia técnica no resuelta.

Un cuadro operativo debería mostrar:

- número de asuntos bloqueados;
- bloqueos por causa;
- bloqueos por responsable de desbloqueo;
- antigüedad de los bloqueos;
- bloqueos con impacto en SLA;
- bloqueos con impacto en hitos próximos.

> Un bloqueo visible se ataca.  
> Un bloqueo invisible envejece.

Un bloqueo no debería ser un cementerio de tareas.  
Debe ser una alarma que indique dónde hay que actuar.

---

# 7. Ritmo de entrada y salida

Un cuadro operativo no debe mostrar solo lo que hay. También debe mostrar cómo se mueve.

Preguntas útiles:

- ¿Cuánto trabajo entra?
- ¿Cuánto trabajo sale?
- ¿Estamos cerrando más de lo que entra?
- ¿Se está acumulando trabajo?
- ¿El equipo está absorbiendo la carga?
- ¿Hay semanas con picos anómalos?
- ¿Qué tipos de trabajo están creciendo?

Ejemplos de métricas de ritmo:

- asuntos creados por semana;
- asuntos cerrados por semana;
- peticiones recibidas;
- incidencias resueltas;
- cambios ejecutados;
- tareas completadas;
- mejoras cerradas;
- evolución del trabajo abierto.

La comparación entre entrada y salida es clave.

Si entra más trabajo del que sale de forma sostenida, el servicio acumula deuda operativa.

---

# 8. Tiempos principales

Los tiempos permiten detectar fricción.

No basta con saber que hay asuntos abiertos. Hay que saber cuánto tardan y dónde esperan.

Tiempos útiles:

- tiempo medio de análisis;
- tiempo medio de clasificación;
- tiempo medio de priorización;
- tiempo medio esperando información;
- tiempo medio esperando aprobación;
- tiempo medio de planificación;
- tiempo medio de ejecución;
- tiempo medio de validación;
- tiempo medio de cierre;
- tiempo medio de resolución de incidencias;
- tiempo medio de bloqueo;
- antigüedad de asuntos abiertos;
- antigüedad de asuntos pendientes de aprobación;
- antigüedad de asuntos en validación.

Ejemplo de lectura:

- si el tiempo de aprobación es alto, el cuello de botella está en gobierno;
- si el tiempo pendiente de información es alto, el problema está en la calidad de entrada;
- si el tiempo en validación es alto, el problema está en las evidencias o en el cierre;
- si el tiempo bloqueado es alto, el problema está en la gestión de dependencias.

---

# 9. Riesgos y atención inmediata

Un cuadro operativo debe ayudar a decidir dónde actuar.

Por eso debería destacar asuntos como:

- incidencias críticas abiertas;
- cambios próximos sin aprobación;
- asuntos bloqueados con mucha antigüedad;
- asuntos que afectan a SLA;
- asuntos que afectan a hitos comprometidos;
- cambios planificados sin validación preparada;
- asuntos pendientes de información desde hace demasiado tiempo;
- trabajos en validación que no se cierran;
- tareas críticas sin responsable.

El cuadro de mando no debe obligar a buscar el problema.  
Debe hacer visible dónde está el problema.

---

# 10. Diferentes cuadros para diferentes audiencias

No todo el mundo necesita ver lo mismo.

Un cuadro de mando debe adaptarse a la audiencia.

---

## 10.1. Cuadro operativo del equipo

Orientado al trabajo diario.

Debe mostrar:

- asuntos abiertos;
- estados;
- bloqueos;
- responsables;
- prioridades;
- tareas en curso;
- próximos cambios;
- incidencias activas;
- validaciones pendientes.

Pregunta principal:

> ¿Qué tenemos que hacer hoy?

---

## 10.2. Cuadro de gestión del servicio

Orientado a responsables de servicio, coordinación y seguimiento.

Debe mostrar:

- carga total;
- evolución del trabajo;
- entrada y salida;
- tiempos principales;
- bloqueos relevantes;
- riesgos;
- cumplimiento de compromisos;
- cambios ejecutados;
- incidencias relevantes;
- mejoras en curso.

Pregunta principal:

> ¿Cómo va el servicio y dónde debo intervenir?

---

## 10.3. Cuadro para cliente o comité

Orientado a comunicación, transparencia y seguimiento ejecutivo.

Debe mostrar:

- estado general;
- trabajo completado;
- trabajo pendiente;
- bloqueos que requieren decisión;
- riesgos;
- próximos hitos;
- incidencias relevantes;
- cambios ejecutados;
- compromisos y desviaciones;
- evidencias de avance.

Pregunta principal:

> ¿Qué se ha hecho, qué queda, qué riesgos hay y qué decisiones necesitamos?

Un buen cuadro para cliente no debe ser un volcado técnico.  
Debe construir una conversación clara de seguimiento del servicio.

---

## 10.4. Cuadro de análisis / BI

Orientado a mejora continua y toma de decisiones de fondo.

Debe mostrar:

- patrones;
- tendencias;
- recurrencias;
- causas de bloqueo;
- causas de retraso;
- comportamiento por tipo de trabajo;
- comportamiento por proveedor;
- comportamiento por centro o área;
- calidad de entrada;
- calidad de cierre;
- evolución histórica.

Pregunta principal:

> ¿Qué está pasando en el sistema y cómo podemos mejorarlo?

---

# 11. Reglas para diseñar un buen cuadro de mando

## 11.1. Debe responder preguntas concretas

Un cuadro no empieza por una gráfica.  
Empieza por una pregunta.

Ejemplos:

- ¿Qué está bloqueado?
- ¿Qué cambios están pendientes de aprobación?
- ¿Qué incidencias siguen activas?
- ¿Qué asuntos llevan demasiado tiempo abiertos?
- ¿Qué entra y qué sale cada semana?
- ¿Dónde se acumula el trabajo?

Si una gráfica no responde a ninguna pregunta útil, probablemente sobra.

---

## 11.2. Debe permitir actuar

Un buen cuadro de mando no solo informa. Ayuda a decidir.

Debe permitir responder:

- qué requiere atención;
- quién debe actuar;
- qué está en riesgo;
- qué está parado;
- qué depende de terceros;
- qué debe escalarse;
- qué puede cerrarse.

Si el cuadro no ayuda a actuar, es decoración.

---

## 11.3. Debe distinguir estado, ritmo y análisis

No todo es lo mismo.

| Nivel | Pregunta |
|---|---|
| **Estado** | ¿Qué hay ahora? |
| **Ritmo** | ¿Cómo se mueve? |
| **Análisis** | ¿Por qué pasa? |

Primero hay que ver.  
Después hay que medir el ritmo.  
Después se puede analizar.

---

## 11.4. Debe tener datos fiables

Un cuadro de mando solo es tan bueno como los datos que lo alimentan.

Si los tipos están mal clasificados, el cuadro miente.  
Si los estados no se actualizan, el cuadro miente.  
Si no se marcan bloqueos, el cuadro miente.  
Si se cierran asuntos sin evidencia, el cuadro miente.

Por eso, antes de pedir buenos cuadros de mando, hay que cuidar el modelo de trabajo.

---

## 11.5. Debe evitar métricas de vanidad

Una métrica de vanidad parece interesante, pero no ayuda a gestionar.

Ejemplos:

- número total histórico de tickets;
- número total de tareas creadas;
- número de comentarios;
- porcentaje de avance subjetivo;
- gráficas bonitas sin decisión asociada;
- volumen de actividad sin relación con valor o resultado.

Una métrica útil debe ayudar a entender, decidir o actuar.

---

## 11.6. Las métricas no deben usarse contra personas

Las métricas deben medir el flujo y el sistema, no utilizarse como arma contra personas.

Si una métrica se usa para señalar o castigar individuos, el sistema se deforma.

La gente puede empezar a:

- cerrar antes de tiempo;
- mover estados para quedar bien;
- evitar tareas difíciles;
- dividir artificialmente el trabajo;
- ocultar bloqueos;
- no registrar problemas complejos;
- priorizar lo que mejora la métrica, no lo que mejora el servicio.

> Cuando una métrica se usa para castigar individuos, deja de medir la realidad.  
> Empieza a medir la capacidad de la gente para protegerse de la métrica.

El objetivo de un cuadro de mando no es buscar culpables.

El objetivo es entender el flujo, detectar bloqueos, mejorar el servicio y tomar mejores decisiones.

---

# 12. Aterrizaje en Redmine

Redmine puede ser un soporte útil para construir parte del cuadro de mando operativo, especialmente si los tipos, estados y campos están bien definidos.

Pero conviene ser honestos: no todo sale igual de fácil.

---

## 12.1. Información que suele poder obtenerse de forma sencilla

Redmine suele permitir obtener con relativa facilidad:

- asuntos abiertos;
- asuntos cerrados;
- asuntos por tracker o tipo;
- asuntos por estado;
- asuntos por prioridad;
- asuntos por responsable;
- asuntos por proyecto;
- asuntos por versión o hito;
- asuntos creados en un periodo;
- asuntos cerrados en un periodo;
- asuntos actualizados recientemente;
- antigüedad por fecha de creación;
- consultas guardadas;
- filtros por campos personalizados.

Esto permite construir un primer cuadro operativo razonable.

Ejemplos:

- peticiones abiertas;
- cambios pendientes;
- incidencias activas;
- asuntos bloqueados si existe estado/campo;
- cambios por prioridad;
- asuntos por responsable;
- trabajo creado frente a trabajo cerrado;
- asuntos antiguos sin cerrar.

---

## 12.2. Información que puede requerir más trabajo

Hay métricas que pueden no estar disponibles de forma directa en Redmine sin configuración adicional, plugin, consulta sobre histórico o exportación a otra herramienta.

Especialmente:

- tiempos reales por estado;
- tiempo exacto esperando aprobación;
- tiempo exacto bloqueado;
- tiempo entre transiciones;
- histórico fino de cambios de estado;
- duración de cada fase del flujo;
- análisis de cuellos de botella por transición.

Esto no significa que no se pueda hacer.

Significa que puede requerir:

- explotar el histórico/journal;
- usar plugins;
- exportar datos;
- integrar con BI;
- definir campos adicionales;
- automatizar cambios de estado;
- conectar Redmine con otras herramientas.

---

## 12.3. Estrategia incremental

No hace falta intentar construir el cuadro perfecto desde el primer día.

Una estrategia razonable sería:

### Fase 1: cantidades

Empezar con lo que Redmine suele dar fácilmente:

- asuntos por tipo;
- asuntos por estado;
- abiertos;
- cerrados;
- bloqueados;
- pendientes de aprobación;
- creados frente a cerrados.

### Fase 2: antigüedad

Añadir señales sencillas de tiempo:

- asuntos más antiguos;
- bloqueos antiguos;
- pendientes de aprobación antiguos;
- asuntos sin actualización reciente;
- asuntos en validación demasiado tiempo.

### Fase 3: tiempos por estado

Cuando el modelo esté más maduro:

- tiempo medio en análisis;
- tiempo medio pendiente de información;
- tiempo medio pendiente de aprobación;
- tiempo medio bloqueado;
- tiempo medio en validación;
- tiempo total de ciclo.

### Fase 4: integración y automatización

En una fase más avanzada:

- integración con Git;
- integración con pipelines;
- integración con Ansible / AAP;
- integración con herramientas de testing;
- integración con monitorización;
- métricas automáticas de validación y despliegue.

Esta evolución debe tratarse como una mejora del propio servicio.

> El cuadro de mando también evoluciona.  
> No se implanta perfecto el primer día.

---

# 13. Ideas clave

Un cuadro de mando operativo sirve para conducir el servicio.

Primero necesitamos visibilidad:

> ¿Qué tengo encima de la mesa?

Después necesitamos ritmo:

> ¿Cuánto entra, cuánto sale y cuánto tarda?

Después podemos hacer análisis:

> ¿Por qué pasa y dónde debemos mejorar?

El cuadro operativo no es BI, aunque puede alimentar BI.

El cuadro operativo responde al presente del servicio.  
El BI analiza comportamiento, patrones y mejora futura.

El cuadro de mando depende del modelo de trabajo.  
Si el modelo está mal, el cuadro miente.

Las métricas automáticas suelen ser más fiables al principio porque las genera el propio flujo técnico.

Las métricas de disciplina son necesarias, pero requieren adopción del modelo.

Las métricas deben medir el sistema, no usarse como arma contra personas.

Redmine puede dar una primera capa útil de cantidades y estados, pero los tiempos finos por estado pueden requerir más trabajo.

Si no clasificamos bien el trabajo, el cuadro de mando no será fiable.  
Si no actualizamos estados, no veremos el flujo.  
Si no marcamos bloqueos, no sabremos dónde actuar.  
Si no cerramos con evidencia, no podremos defender el servicio ante el cliente.

Frase final:

> Un cuadro de mando no consiste en poner gráficas.  
> Consiste en construir una conversación de gestión basada en datos.
