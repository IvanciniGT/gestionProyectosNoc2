# Modelo de trabajos vivos en un NOC

En un NOC o en un servicio gestionado de red conviven muchos trabajos al mismo tiempo: peticiones, incidencias, cambios, problemas, mejoras, proyectos, tareas, aprobaciones, validaciones, bloqueos y evidencias.

Para poder gestionar todo ese trabajo de forma ordenada no basta con tener una lista de tareas. Necesitamos un modelo que permita saber:

- qué tipo de asunto tenemos delante;
- en qué punto del flujo se encuentra;
- qué datos lo caracterizan;
- qué evidencia deja;
- con qué otros elementos está relacionado.

La idea principal es esta:

> Un asunto no se gestiona solo por su estado.  
> Se gestiona por la combinación de tipo, estado, atributos, evidencias y relaciones.

---

# 1. Los cinco planos del modelo

Para ordenar el trabajo vivo del servicio podemos separar cinco planos.

| Plano        | Pregunta que responde                                |
|--------------|-------------------------------------------------------|
| Tipo         | ¿Qué es este asunto?                                  |
| Estado       | ¿Dónde está ahora mismo dentro del flujo?             |
| Atributos    | ¿Qué datos lo caracterizan?                           |
| Evidencias   | ¿Qué demuestra que ha avanzado o se ha cerrado?       |
| Relaciones   | ¿Con qué otros elementos está conectado?              |

---

## 1.1. Tipo

El tipo define la naturaleza del asunto.

Ejemplos de tipos:

- petición de servicio;
- cambio;
- incidencia;
- problema;
- mejora;
- proyecto / iniciativa;
- tarea.

El tipo ayuda a decidir cómo debe gestionarse el asunto.

No se gestiona igual una incidencia que un cambio.  
No se gestiona igual una petición que un problema.  
No se gestiona igual una mejora que un proyecto.

---

## 1.2. Estado

El estado indica dónde se encuentra el asunto dentro del flujo de trabajo.

Ejemplos de estados:

- nuevo;
- en análisis;
- pendiente de información;
- pendiente de aprobación;
- planificado;
- en ejecución;
- en validación;
- bloqueado;
- resuelto;
- cerrado;
- cancelado.

El estado ayuda a entender qué necesita el asunto para avanzar.

---

## 1.3. Atributos

Los atributos son datos que califican el asunto.

Ejemplos:

- prioridad;
- impacto;
- urgencia;
- riesgo;
- servicio afectado;
- centro afectado;
- responsable;
- fecha objetivo;
- SLA;
- criticidad;
- proveedor implicado;
- cliente o área solicitante.

Los atributos no son estados. Acompañan al asunto durante su ciclo de vida.

Por ejemplo:

    Tipo: Cambio
    Estado: Pendiente de aprobación
    Prioridad: Alta
    Riesgo: Medio
    Servicio afectado: Conectividad de sede
    Responsable: Equipo de red

---

## 1.4. Evidencias

Las evidencias son los elementos que permiten demostrar que algo ha ocurrido, que algo se ha validado o que algo se ha cerrado correctamente.

Ejemplos:

* aprobación registrada;
* comentario de validación;
* log de ejecución;
* resultado de una prueba;
* informe de validación;
* salida de una herramienta;
* commit;
* diff;
* job de automatización;
* adjunto;
* confirmación del cliente;
* actualización documental;
* cierre formal de ticket.

La pregunta clave es:

> ¿Puedo defender este avance o este cierre con evidencias?

---

## 1.5. Relaciones

Las relaciones conectan un asunto con otros elementos del servicio.

Ejemplos:

* ticket ITIL relacionado;
* tarea Redmine;
* subtarea;
* cambio asociado;
* incidencia relacionada;
* problema asociado;
* proyecto al que pertenece;
* commit en Git;
* playbook;
* job de Ansible / AAP;
* prueba automatizada;
* documento de diseño;
* aprobación;
* evidencia de cierre.

La trazabilidad aparece cuando estas relaciones están bien registradas.

---

# 2. Tipos de trabajos vivos

## 2.1. Proyecto / iniciativa

Un proyecto o iniciativa es un contenedor de trabajo con un objetivo, un alcance y varias piezas asociadas.

No debe entenderse simplemente como “una tarea grande”. Normalmente incluye tareas, cambios, peticiones, riesgos, bloqueos, validaciones y evidencias.

Un proyecto o iniciativa suele tener:

* objetivo definido;
* alcance;
* fecha o periodo de ejecución;
* varias actividades relacionadas;
* dependencias;
* seguimiento;
* cierre formal.

**Pregunta clave:**

> ¿Esto tiene un objetivo amplio, varias piezas asociadas y un fin identificable?

Si la respuesta es sí, probablemente hablamos de un proyecto o iniciativa.

---

## 2.2. Petición de servicio

Una petición de servicio es una solicitud que llega al servicio desde un cliente, usuario autorizado, área interna o responsable funcional.

No necesariamente hay algo roto. Simplemente alguien solicita algo que el servicio debe gestionar, tramitar o responder.

Una petición de servicio suele implicar:

* registro de la solicitud;
* análisis inicial;
* clasificación;
* priorización;
* posible derivación a cambio, tarea, mejora o proyecto;
* comunicación con el solicitante;
* cierre formal.

**Pregunta clave:**

> ¿Alguien está pidiendo algo que el servicio debe gestionar, responder o tramitar?

Una petición puede quedarse como petición sencilla o puede generar otros trabajos asociados:

* una tarea;
* un cambio;
* una mejora;
* un proyecto;
* una investigación.

---

## 2.3. Cambio

Un cambio es una modificación controlada sobre producción o sobre un servicio existente.

En entornos de red, muchos trabajos que parecen simples tareas realmente son cambios, porque pueden afectar al servicio, a la seguridad, a la conectividad, a la disponibilidad o a la operación.

Un cambio suele requerir:

* análisis de impacto;
* evaluación de riesgo;
* aprobación;
* planificación;
* ventana de cambio;
* plan de ejecución;
* plan de vuelta atrás;
* validación posterior;
* evidencia;
* cierre formal.

**Pregunta clave:**

> ¿Esto modifica producción o puede afectar al servicio?

Si la respuesta es sí, probablemente hablamos de un cambio.

---

## 2.4. Subtipos de cambio

No todos los cambios deben tratarse igual. La aprobación y el control deberían ser proporcionales al riesgo.

| Subtipo                  | Descripción                                                                                                                          |
| ------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| **Cambio estándar**      | Cambio repetitivo, conocido, de bajo riesgo y con procedimiento probado. Puede estar preaprobado si cumple determinadas condiciones. |
| **Cambio normal**        | Cambio controlado que requiere análisis, aprobación y planificación.                                                                 |
| **Cambio mayor**         | Cambio de alto impacto, alto riesgo o con muchos elementos afectados. Requiere mayor coordinación y control.                         |
| **Cambio de emergencia** | Cambio urgente para restaurar servicio, evitar un daño mayor o responder a una situación crítica.                                    |

> Emergencia no significa ausencia de control.
> Significa control adaptado a la urgencia.

---

## 2.5. Incidencia

Una incidencia es algo que no funciona como debería y que requiere restaurar el servicio o reducir el impacto.

La prioridad principal de una incidencia no es rediseñar el sistema, sino recuperar el funcionamiento normal o aceptable del servicio.

Una incidencia suele requerir:

* registro;
* análisis de impacto;
* priorización según urgencia e impacto;
* diagnóstico;
* escalado si aplica;
* actuación correctiva;
* validación de recuperación;
* comunicación;
* cierre.

**Pregunta clave:**

> ¿Hay interrupción, degradación o mal funcionamiento de un servicio que debería estar funcionando?

Si la respuesta es sí, hablamos de una incidencia.

Una incidencia puede cerrarse cuando el servicio queda restaurado, aunque todavía no se conozca completamente la causa raíz.

Si la causa debe investigarse para evitar recurrencia, puede abrirse un problema.

---

## 2.6. Problema

Un problema es un trabajo orientado a investigar causa raíz, recurrencia o riesgo estructural.

No debe confundirse con una incidencia.

| Concepto       | Objetivo                                                   |
| -------------- | ---------------------------------------------------------- |
| **Incidencia** | Restaurar el servicio.                                     |
| **Problema**   | Investigar por qué falla para evitar que vuelva a ocurrir. |

Un problema suele requerir:

* agrupación de incidencias relacionadas;
* análisis de causa raíz;
* identificación de patrones;
* hipótesis técnica u operativa;
* acciones preventivas o correctivas;
* seguimiento;
* cierre documentado.

**Pregunta clave:**

> ¿Tenemos que investigar por qué pasa esto para que no vuelva a repetirse?

Un problema puede generar:

* una mejora;
* un cambio;
* una tarea;
* una acción preventiva;
* una actualización de procedimiento;
* un proyecto.

---

## 2.7. Mejora

Una mejora es un trabajo que aumenta la calidad, la eficiencia, la seguridad, la visibilidad, la trazabilidad o la capacidad de gestión del servicio.

No siempre nace de una urgencia. Muchas mejoras no gritan, pero reducen riesgo y coste futuro.

Una mejora puede aportar:

* menos trabajo manual;
* menos errores repetitivos;
* más trazabilidad;
* más visibilidad;
* mejor documentación;
* mejor validación;
* más automatización;
* menos dependencia de personas concretas;
* menor riesgo operativo;
* mayor capacidad de reporting.

**Pregunta clave:**

> ¿Esto mejora el servicio aunque no haya una urgencia inmediata?

Las mejoras suelen competir con el trabajo urgente del día a día. Por eso, si no se gestionan explícitamente, tienden a abandonarse.

---

## 2.8. Tarea / acción

Una tarea es una unidad concreta de trabajo.

La tarea no está al mismo nivel que una petición, una incidencia, un cambio o un proyecto. Una tarea suele vivir dentro de alguno de esos asuntos.

Una tarea puede formar parte de:

* una petición;
* un cambio;
* una incidencia;
* un problema;
* una mejora;
* un proyecto.

Una tarea debería tener, como mínimo:

* descripción clara;
* responsable;
* estado;
* fecha objetivo si aplica;
* relación con el asunto principal;
* criterio de finalización.

**Pregunta clave:**

> ¿Qué acción concreta hay que hacer ahora?

La tarea es la pieza ejecutable del trabajo.

---

# 3. Estados y etapas del flujo

El estado indica dónde está ahora mismo un asunto dentro del flujo de trabajo.

Un modelo operativo razonable para un NOC puede incluir estos estados o etapas:

1. Nuevo.
2. En análisis / clasificación.
3. Pendiente de información.
4. Priorización pendiente.
5. Pendiente de aprobación.
6. Planificado.
7. En ejecución.
8. En validación.
9. Bloqueado.
10. Resuelto / completado.
11. Cerrado.
12. Cancelado.

No todos los tipos de trabajo necesitan todos los estados. Una incidencia, un cambio, una mejora, una petición o un proyecto pueden tener flujos diferentes.

El objetivo no es tener pocos estados ni muchos estados. El objetivo es tener estados útiles.

Un estado es útil cuando representa una situación real del flujo y ayuda a responder:

* qué está pasando;
* qué falta;
* quién debe actuar;
* qué impide avanzar;
* qué evidencia falta;
* si el asunto puede cerrarse.

> No nos asustan muchos estados.
> Nos asustan estados que nadie actualiza.

Cuando parte del flujo se automatiza, tener más estados puede aportar más visibilidad sin generar más burocracia.

Ese es uno de los aportes de NetDevOps: si una herramienta, una prueba, un pipeline o una aprobación puede actualizar el estado de forma automática o semiautomática, el estado deja de ser carga administrativa y se convierte en evidencia operativa.

---

## 3.1. Nuevo

El asunto ha entrado en el sistema, pero todavía no ha sido revisado.

**Pregunta asociada:**

> ¿Alguien ha revisado ya qué es esto?

Este estado debería ser temporal. Si muchos asuntos permanecen demasiado tiempo en “Nuevo”, el servicio no está clasificando ni atendiendo correctamente las entradas.

---

## 3.2. En análisis / clasificación

El asunto se está revisando para entender su naturaleza, impacto, urgencia, alcance y datos necesarios.

En este estado se intenta responder:

* qué se pide;
* qué servicio afecta;
* qué impacto tiene;
* qué información falta;
* qué tipo de trabajo es;
* qué flujo debe seguir.

**Pregunta asociada:**

> ¿Tenemos información suficiente para clasificar y decidir el flujo?

Aquí conviene distinguir entre actividad y atributo:

| Elemento       | Naturaleza                               |
| -------------- | ---------------------------------------- |
| **Clasificar** | Actividad o etapa del flujo.             |
| **Tipo**       | Atributo resultante de la clasificación. |

Es decir, el asunto puede estar en una etapa de análisis o clasificación, pero el resultado final será un tipo asignado: petición, cambio, incidencia, problema, mejora, proyecto o tarea.

---

## 3.3. Pendiente de información

El asunto no puede avanzar correctamente porque faltan datos necesarios.

Este estado se usa cuando el problema no es aprobación ni ejecución, sino falta de información suficiente.

Puede faltar información de tipo:

* funcional;
* técnica;
* operativa;
* de impacto;
* de alcance;
* de validación;
* de responsable;
* de ventana;
* de criticidad.

**Pregunta asociada:**

> ¿Qué dato falta y quién debe aportarlo?

Un asunto pendiente de información debe tener identificado:

* qué información falta;
* quién debe aportarla;
* desde cuándo falta;
* qué impacto tiene no disponer de ella;
* cuál es la siguiente acción.

### Pendiente de información frente a bloqueado

“Pendiente de información” puede parecer un bloqueo, pero conviene mantenerlo separado cuando sea útil.

| Estado                       | Matiz                                                                     |
| ---------------------------- | ------------------------------------------------------------------------- |
| **Pendiente de información** | Falta un dato para poder analizar, preparar o continuar correctamente.    |
| **Bloqueado**                | El trabajo debería avanzar, pero una dependencia concreta impide hacerlo. |

Mantener “pendiente de información” separado puede ayudar a detectar problemas de calidad de entrada.

---

## 3.4. Priorización pendiente

El asunto ya se entiende suficientemente, pero todavía no se ha decidido su prioridad dentro del conjunto de trabajo.

Priorizar no significa ponerlo todo como urgente.

> Si todo es urgente, nada es urgente.

La prioridad debería tener en cuenta:

* impacto;
* urgencia;
* riesgo;
* SLA;
* compromisos con cliente;
* dependencias;
* valor aportado;
* coste de no hacerlo;
* fecha objetivo;
* criticidad del servicio afectado.

**Pregunta asociada:**

> ¿Sabemos qué va antes y por qué?

Aquí también conviene distinguir entre actividad y atributo:

| Elemento      | Naturaleza                              |
| ------------- | --------------------------------------- |
| **Priorizar** | Actividad o etapa del flujo.            |
| **Prioridad** | Atributo resultante de la priorización. |

La prioridad debe poder explicarse.

---

## 3.5. Pendiente de aprobación

El asunto está suficientemente definido, pero necesita autorización para avanzar.

Este estado es especialmente importante en cambios, trabajos de riesgo, actuaciones en producción o tareas que afectan a servicio.

La aprobación puede venir de:

* cliente;
* responsable del servicio;
* seguridad;
* CAB;
* operación;
* dirección;
* proveedor;
* área funcional.

**Pregunta asociada:**

> ¿Quién tiene que aprobar para que esto avance?

Un asunto pendiente de aprobación debería indicar:

* qué se solicita aprobar;
* quién debe aprobar;
* desde cuándo está pendiente;
* qué impacto tiene la espera;
* qué ocurre si no se aprueba.

---

## 3.6. Planificado

El asunto ya tiene una fecha, ventana, responsable o previsión de ejecución.

Planificado no significa ejecutado.

Significa que ya existe una intención organizada de ejecución.

Debería estar claro:

* cuándo se va a ejecutar;
* quién lo va a ejecutar;
* qué condiciones deben cumplirse antes;
* qué dependencias existen;
* qué ventana aplica si procede;
* qué comunicación previa se requiere.

**Pregunta asociada:**

> ¿Sabemos cuándo y cómo se va a ejecutar?

---

## 3.7. En ejecución

El trabajo está siendo realizado activamente.

Puede ser ejecución técnica, gestión operativa, análisis, coordinación o cualquier otra acción necesaria para avanzar.

**Pregunta asociada:**

> ¿Hay alguien trabajando activamente en esto ahora?

Un asunto en ejecución debería tener:

* responsable activo;
* acción en curso;
* fecha de inicio;
* resultado esperado;
* siguiente paso previsto.

---

## 3.8. En validación

La ejecución ha terminado, pero falta comprobar que el resultado es correcto.

Validar no es simplemente decir “ya está hecho”.
Validar es comprobar que el resultado esperado se cumple.

La validación puede ser:

* técnica;
* funcional;
* operativa;
* de cliente;
* de monitorización;
* de evidencias;
* de cumplimiento de requisitos.

**Pregunta asociada:**

> ¿Tenemos evidencia de que funciona?

Un asunto no debería cerrarse correctamente sin validación suficiente.

---

## 3.9. Bloqueado

El asunto debería avanzar, pero no puede hacerlo por una dependencia concreta.

Bloqueado no significa simplemente “pendiente”.
Bloqueado significa que hay un impedimento que impide avanzar.

**Pregunta asociada:**

> ¿Qué impide avanzar, desde cuándo, quién lo desbloquea y qué impacto tiene?

Un bloqueo debería registrar como mínimo:

* motivo del bloqueo;
* fecha de inicio del bloqueo;
* responsable de desbloqueo;
* impacto;
* siguiente acción;
* fecha objetivo.

Frase clave:

> Un bloqueo visible se ataca.
> Un bloqueo invisible envejece.

Otra frase importante:

> Bloqueado no es un cementerio.
> Bloqueado es una alarma.

---

## 3.10. Resuelto / completado

El trabajo técnico o funcional está terminado, pero puede faltar cierre formal, documentación, comunicación o evidencia final.

Este estado puede ser útil para distinguir entre:

| Situación                         | Significado                                                               |
| --------------------------------- | ------------------------------------------------------------------------- |
| **Trabajo realizado**             | La acción principal ya se ha hecho.                                       |
| **Trabajo cerrado correctamente** | Además de estar hecho, está validado, evidenciado y comunicado si aplica. |

**Pregunta asociada:**

> ¿Está hecho técnicamente, pero falta cierre administrativo, documentación, evidencia o comunicación?

Un asunto resuelto todavía puede requerir:

* confirmación del cliente;
* adjuntar evidencias;
* actualizar documentación;
* cerrar ticket relacionado;
* comunicar finalización;
* revisar impacto.

---

## 3.11. Cerrado

El asunto está completado, validado, evidenciado y comunicado si aplica.

Cerrar no debería ser simplemente mover una tarjeta a “hecho”.

Un cierre correcto debería implicar:

* trabajo completado;
* validación realizada;
* evidencia adjunta;
* cliente informado si aplica;
* documentación actualizada si aplica;
* ticket relacionado cerrado si aplica;
* decisión de cierre clara.

**Pregunta asociada:**

> ¿Puedo defender este cierre ante el cliente con evidencias?

Si no puedo defender el cierre, probablemente el asunto no está bien cerrado.

---

## 3.12. Cancelado

Se decide no continuar con el asunto.

Un asunto cancelado no desaparece sin más. Debe quedar claro por qué se cancela y quién toma la decisión.

**Pregunta asociada:**

> ¿Está claro por qué se cancela y quién lo decidió?

Un asunto cancelado debería indicar:

* motivo de cancelación;
* quién decide cancelar;
* fecha;
* impacto si lo hay;
* comunicación realizada si aplica.

---

# 4. Relación entre tipos, estados, atributos y evidencias

Los tipos y los estados son dos ejes distintos.

| Eje            | Qué define                                             |
| -------------- | ------------------------------------------------------ |
| **Tipo**       | La naturaleza del asunto.                              |
| **Estado**     | Su situación actual.                                   |
| **Atributos**  | Datos que lo califican.                                |
| **Evidencias** | Pruebas de avance, validación o cierre.                |
| **Relaciones** | Vínculos con otros asuntos, herramientas o artefactos. |

No basta con saber el tipo. También hay que conocer el estado.

No es lo mismo:

* cambio pendiente de aprobación;
* cambio planificado;
* cambio bloqueado;
* cambio en validación;
* cambio cerrado.

Tampoco es lo mismo:

* incidencia nueva;
* incidencia en ejecución;
* incidencia resuelta;
* incidencia cerrada.

Y tampoco basta con saber el estado si faltan atributos o evidencias.

Un cambio “cerrado” sin evidencia no está realmente defendible.
Una petición “priorizada” sin criterio claro puede generar conflicto.
Un bloqueo sin responsable de desbloqueo se convierte en un aparcamiento.

---

# 5. Matriz orientativa de tipos y estados habituales

Esta matriz no es una regla cerrada. Sirve como referencia inicial para ordenar el trabajo vivo del servicio.

Cada organización puede adaptar los estados, pero conviene evitar inconsistencias de nombres y definir claramente qué significa cada estado.

| Tipo                      | Estados o etapas más habituales                                                                                                                            |
| ------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Petición**              | Nuevo → En análisis / clasificación → Pendiente de información → Priorización pendiente → En ejecución → En validación → Cerrado                           |
| **Cambio**                | Nuevo → En análisis / clasificación → Pendiente de información → Pendiente de aprobación → Planificado → En ejecución → En validación → Resuelto → Cerrado |
| **Incidencia**            | Nuevo → En análisis / diagnóstico → En ejecución → En validación → Resuelto → Cerrado                                                                      |
| **Problema**              | Nuevo → En análisis / investigación → Priorización pendiente → En ejecución → En validación → Cerrado                                                      |
| **Mejora**                | Nuevo → En análisis / clasificación → Priorización pendiente → Planificado → En ejecución → En validación → Cerrado                                        |
| **Proyecto / iniciativa** | Nuevo → En análisis → Planificado → En ejecución / seguimiento → En validación / cierre → Cerrado                                                          |
| **Tarea**                 | Pendiente → En ejecución → En validación si aplica → Resuelta / cerrada → Cancelada                                                                        |

Estado transversal:

> **Bloqueado** puede aparecer en casi cualquier punto del flujo.

---

# 6. Estados manuales y estados automatizables

No todos los estados tienen por qué actualizarse manualmente.

En un modelo más maduro, parte de las transiciones pueden generarse automáticamente o semiautomáticamente a partir de herramientas, pruebas, aprobaciones o evidencias.

Ejemplos conceptuales:

| Situación                                     | Posible actualización                           |
| --------------------------------------------- | ----------------------------------------------- |
| Se crea una solicitud                         | Nuevo                                           |
| Se asigna responsable y comienza revisión     | En análisis                                     |
| Falta un dato obligatorio                     | Pendiente de información                        |
| Se registra aprobación necesaria              | Pendiente de aprobación                         |
| Se aprueba una ventana                        | Planificado                                     |
| Se lanza ejecución técnica                    | En ejecución                                    |
| Termina la ejecución                          | En validación                                   |
| Pasa una prueba o validación                  | Resuelto / completado                           |
| Se adjunta evidencia y se comunica cierre     | Cerrado                                         |
| Falla una validación                          | En validación / bloqueado / requiere corrección |
| Falta respuesta externa durante cierto tiempo | Bloqueado                                       |

La automatización de estados reduce carga administrativa y aumenta visibilidad.

Esto conecta directamente con NetDevOps:

> Si las herramientas generan eventos, evidencias y resultados, esos datos pueden alimentar el flujo de gestión.

Por tanto, el problema no es tener varios estados.
El problema es tener estados que no representan nada útil o que nadie actualiza.

---

# 7. Mapeo conceptual a Redmine

En Redmine, este modelo puede mapearse de distintas formas según cómo esté configurada la herramienta.

Una correspondencia conceptual razonable sería:

| Concepto del modelo         | Posible representación en Redmine                                |
| --------------------------- | ---------------------------------------------------------------- |
| Tipo de asunto              | Tracker, categoría, proyecto, tarea padre o campo personalizado  |
| Proyecto / iniciativa       | Proyecto Redmine, tarea padre, versión/hito o agrupación         |
| Petición                    | Issue con tracker de petición o solicitud                        |
| Cambio                      | Issue con tracker de cambio                                      |
| Incidencia                  | Issue con tracker de incidencia                                  |
| Problema                    | Issue con tracker de problema                                    |
| Mejora                      | Issue con tracker de mejora                                      |
| Tarea                       | Subtarea o issue relacionado                                     |
| Estado                      | Workflow del tracker                                             |
| Prioridad                   | Campo prioridad                                                  |
| Impacto / urgencia / riesgo | Campos personalizados                                            |
| Bloqueo                     | Estado, etiqueta o campo específico                              |
| Motivo del bloqueo          | Campo personalizado                                              |
| Responsable de desbloqueo   | Campo personalizado o asignación                                 |
| Evidencias                  | Adjuntos, comentarios, enlaces                                   |
| Relaciones                  | Relaciones entre issues, enlaces externos, referencias a commits |

La clave no es que Redmine tenga exactamente estos nombres.

La clave es que permita responder:

* qué tipo de asunto es;
* en qué estado está;
* quién lo lleva;
* qué falta;
* qué lo bloquea;
* qué evidencia existe;
* con qué ticket, cambio, commit o prueba está relacionado.

---

# 8. Correspondencia conceptual con ITIL

En un servicio gestionado, muchos de estos conceptos tienen correspondencia con procesos habituales de ITIL.

| Modelo operativo      | Correspondencia conceptual ITIL                                    |
| --------------------- | ------------------------------------------------------------------ |
| Petición de servicio  | Gestión de peticiones de servicio                                  |
| Incidencia            | Gestión de incidencias                                             |
| Problema              | Gestión de problemas                                               |
| Cambio                | Habilitación / gestión de cambios                                  |
| Mejora                | Mejora continua                                                    |
| Proyecto / iniciativa | Gestión de proyectos / planificación de evolución del servicio     |
| Tarea                 | Actividad operativa dentro de un proceso                           |
| Bloqueo               | Impedimento, dependencia o espera dentro del flujo                 |
| Evidencia             | Registro, prueba, validación, aprobación o documentación de cierre |

Este mapeo es útil porque evita mezclar conceptos.

Una petición no es automáticamente una incidencia.
Una incidencia no es automáticamente un problema.
Un cambio no es simplemente una tarea.
Una mejora no debería desaparecer porque no sea urgente.

---

# 9. Ideas clave

Para gestionar un NOC necesito distinguir, como mínimo:

1. Qué tipo de trabajo tengo.
2. En qué estado está.
3. Qué atributos lo caracterizan.
4. Qué evidencia deja.
5. Con qué otros elementos está relacionado.

El tipo me dice cómo debo gestionarlo.
El estado me dice qué necesita ahora para avanzar.
Los atributos me ayudan a priorizar y entender impacto.
Las evidencias me permiten defender avance y cierre.
Las relaciones me dan trazabilidad.

No se gestiona igual:

* una petición;
* una incidencia;
* un cambio;
* un problema;
* una mejora;
* un proyecto;
* una tarea.

Proyecto o iniciativa suele ser un contenedor.
Tarea suele ser una unidad concreta de trabajo.

Bloqueado no es un tipo.
Bloqueado es un estado transversal.

> Un bloqueo visible se ataca.
> Un bloqueo invisible envejece.

No nos asustan muchos estados.
Nos asustan estados que nadie actualiza.

Si las transiciones se automatizan o se apoyan en evidencias, los estados dejan de ser burocracia y se convierten en visibilidad.

Si no clasifico bien, no priorizo bien.
Si no tengo estados claros, no veo el flujo.
Si no marco bloqueos, no sé dónde actuar.
Y si no cierro con evidencia, no puedo defender el servicio ante el cliente.

