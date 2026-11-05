
 Resumen jornada anterior:
 - Herramientas de automatización de trabajos -> Trabajos de configuración / administración / operación de equipos/sistemas:
   - Ansible    \ 
   - Terraform  / Facilidad para conseguir IDEMPOTENCIA (gracias al uso de lenguajes declarativos)
      -> Catálogo de los recursos que tengo en mi infraestructura en un estado concreto
      Nos ayudan con la automatización de tareas (subprocesos)  
 - IaC (Infrastructure as Code): Tratar la infra como si de un programa se tratara.
   Lo primero sometiéndola a control de versiones <-- (El uso de lenguajes declarativos -> IDEMPOTENCIA es clave)
 - Control de versiones (GIT)
   - Planificar trabajos y cambios en el sistema
   - Ver cómo está cada trabajo
   - Decidir qué tarea/trabajos voy a liberar en la siguiente entrega
 - NetDevOps -> Automatización de PROCESOS
   - Herramientas:
      - Jenkins
      - GitLab CI/CD
      - Ansible Tower, Ansible AWX/Ansible Controller
            
---

# Implantación de todo esto dentro de la empresa.

La migración hacia estos conceptos/formas de trabajo es lenta! Años!
Requiere cambios culturales, formación del personal y adaptación de procesos existentes.

Normalmente esto empieza por sistemas/operaciones de la empresa. Es la gente que empieza a usar estas herramientas para sus cosas.
- Hacen su primera instalación
- Van haciendo sus automatizaciones de manera progresiva
- Van aprendiendo e introduciendo estas herramientas y formas de trabajo en la empresa

De ahí se expande.

## Evolución de las estructuras organizativas / modelos de trabajo que facilitan la automatización

- Evolución histórica:
  - En los albores de la informática... la gente iba a su bola! Años 50-60 -> ANARQUÍA
    Esto acabó mal! -> GRAN CRISIS DEL SOFTWARE (sistemas inmantenibles, plazos de entrega incumplidos, costes desorbitados)
  - Principios de los 70: INGENIERIA DE SOFTWARE AL RESCATE (O eso pensábamos)
    Se empezaron a definir metodologías, procesos y buenas prácticas para el desarrollo de software.
    Y nos volvimos locos:
    - Metodologías rígidas y pesadas                        ---> Waterfall
    - Documentación exhaustiva y pesada                     ---> ITIL
    - Procesos burocráticos y lentos                        ---> Crear departementos centrales de Informática
    - HiperCentralización de decisiones y control                           -> MODELO DE HIPERCONTROL / BUROCRACIA / ESTADO CENTRALIZADO
    Esto nos ha dado problemas: 
    - Rigidez y falta de adaptabilidad
    - Lentos tiempos de respuesta ante cambios
    - Alta dependencia de procesos y documentación
    - Dificultad para innovar y adoptar nuevas tecnologías
  - Hoy en día.. hacía dónde esta evolucionando todo esto?   -> MODELOS FEDERADOS / DISTRIBUIDOS
    - Vamos aun punto INTERMEDIO entre la hipercentralización y la autonomía de los equipos/departamentos.
      Queremos que los equipos tengan libertad, decisión sobre cómo hacer las cosas
      En paralelo queremos mantener cierta coordinación y cierto control centralizado para asegurar la coherencia y alineación con los objetivos estratégicos de la empresa. Con procedimientos/patrones SIMILARES que faciliten la reubicación y adaptación de los equipos a nuevas necesidades sin perder consistencia.
      Buscamos:
      - Soporte
      - Pautas
      - Herramientas
      - Plantillas
      - Pipelines de CI/CD
      Aquí hay un concepto que se está poniendo de moda con distintos nombres:
      - CoE (Center of Excellence): Un equipo o entidad dentro de la organización que proporciona soporte, pautas, herramientas y plantillas para facilitar la adopción de buenas prácticas y la coherencia en los procesos de trabajo.
      Todo esto de nuevo son cambios profundos dentro de una organización:
      - Rompen procedimientos
      - Rompen departamentos (estructura organizativa) 
      - Rompen la forma en que se toman decisiones y se distribuye el poder dentro de la organización
      - Rompen con la cultura

Poco a poco se va fraguando ese centro de excelencia dentro de la organización, esto es lo que pasa en la realidad. Otra cosa es que parta de CERO al montar una empresa (Neobancos). Eso ocurre sin darnos cuenta... Al final se formaliza.

---

Telefónica gestionaba ACLS en Routers -> 3000 Centros de trabajo (+6000 routers)
Eso se está migrando:
- Responsabilidad/Equipo de trabajo (Telefónica -> Vosotros)
- Funcional / Cambios (Peticiones, Obsolescencia-Revisión)

Opciones con respecto al proyecto: 

> Opción 1: Atacarlo de forma tradicional

    METODOLOGIA EN CASCADA: FASES PARA EL PROYECTO:
        Requisitos                  (Tomo requisitos... 1 mes de documento WORD) 
        Plan inicial                                  5%
        Análisis completo del sistema/proyecto       20% -> 2 meses -> 3.5 meses (o más)
        Diseño                                       25%
        Ejecución/Implantación                       35%
        Pruebas                                      10%
        Entregamos / Finalización del proyecto        5%

Y empezamos....  Qué inconvenientes/problemas/riesgos podríamos encontrarnos o vamos anticipando ya con nuestra experiencia en otros proyectos?
- La desviación de tiempos de una parte arrastra a las demás.
  - Me preocupa mucho el análisis: No tengo ni la más remota idea de lo que voy a encontrar. No estaba bajo mi control. No se que se ha hecho, que no, que vale, que no. Y el problema es que esto lo tengo que mirar en CADA EQUIPO/ROUTER!
- Los requisitos por mucho que quiera: NO ESTAN CERRADOS:
  - Peticiones -> Cambios que salen de manera natural con el tiempo
  - Al invesigar cada equipo.. iré encontrando sorpresas (bombas) que no tenía previstas.. Y seguro que alguna me toca las narices!
- Retrasos debidos a causas externas / ajustes de ventanas de paso a explotación con el cliente o con otros equipos involucrados. BUROCRACIA.
- Las pruebas al final... no me permiten tener garantías de que el trabajo que estoy haciendo es correcto hasta que llego a esa fase.
- Cuándo puede empezar a disfrutar el cliente de los beneficios de todo esto? Hacia el final... Hasta pasado el 55% del tiempo al menos (siendo muy optimista) Se íra al 80%, el cliente no tiene nada.
- Desde el punto de vista de gestión... CÓMO SÉ CÓMO VOY? DÓNDE ESTAMOS? QUÉ TAL VA EL PROYECTO?
 - Mirando el número de centros que ya se han migrado. Cuándo empezamos según planificación con la migración? Cuando ha pasado el 50% del tiempo? Hasta ese punto voy a ciegas? Ese punto, que ya SABEMOS que va a retrasarse (ANALISIS > 2 meses -> 3.5 meses (o más))
  Para ese momento ya han pasado 6-7 de los 12 meses de proyecto que tengo. Qué margen de maniobra me deja esto para la toma de decisiones? 
            número de centros que ya se han migrado => DATO OBJETIVO ... que no puedo calcular (usar) hasta que no empiece la migración.

    ESTOS SON LOS PROBLEMAS QUE HEMOS PADECIDO DÉCADAS. Y AL FINAL EL PROYECTO SALÍA! Tarde, con beneficio disminuido, dolosoro.. pero salía.

Qué nos está matando? Qué ha fallado?
- La falta de datos reales tempranos. Feedback acerca del:
  - Estado real/inicial del sistema
  - Bombitas
- Datos reales sobre tiempos de las tareas.

> Opción 2: Atacarlo de forma más ágil

- La toma de requisitos ya dijimos que era incompleta.. que no estaba bien.. que no me servía realmente para la planificación. Nos han ido cambiando los requisitos a medida que hemos ido trabajando... Para qué preocuparse por esto. "Be water my friend" - Bruce Lee

BACKLOG (Registro de las tareas que CREO que debo ir haciendo) <- Esto va a cambiar con el tiempo. Me lo tomo como algo... provisional, que me ayuda a EMPEZAR a organizarme. Tampoco me reocupo mucho de ORGANIZARME... Si no sé realmente de qué va todo esto aún.
    - Migrar reglas del centro 1 - router 1
    - Migrar reglas del centro 1 - router 2
    - Migrar reglas del centro 2 - router 1
    - Migrar reglas del centro 2 - router 1
    - Hacer un estudio de la capacidad efectiva de los firewalls (ALTA PRIORIDAD) Al siguiente SPRINT

PLANIFICACIÓN... De lo que voy a hacer las próximas 4 semanas.
Tengo 4 semanas por delante. A qué decico el tiempo? -> TAREAS (sadrán del backlog)
Tengo 6000 routers por migrar... 3000 centros por delante. y tengo 12 meses : 6000 routers / 12 meses = 500 routers/mes
La realidad... eso va a ser constante? NO, ya que:
- Habrá problemas        (sobre los que iremos aprendiendo y dando respuestas adecuadas, la primera vez que me encuentre el problema tardaré más tiempo)
- Meses que no sean iguales
- Experiencia del equipo (van a ir aprendiendo)
- Lo que parece (y lo esperado) es que según pase el tiempo sea capaz de ir haciendo más y más routers.

Tengo una idea ahora mismo de lo que voy a tardar en cada router? NO... Puedo tener una ligera ESTIMACIÓN.. en base a experiencias previas.
Pero más o menos es lo mismo que intentar leer los posos del café.

Qué hago.. FLUYE. no te quedes ahí!
Primer mes. Objetivo: Migrar 10 centros.
- Tengo 2 opciones: Quiero automatizar el trabajo o lo quiero hacer en manual?
  - Uso Ansible/Terraform y todas estas herramientas superchulas que me han vendido tan guay y que son la panacea o no?
  - Lo hago a mano?
Para 6000 me va a interesar automatizar o no? CLARAMENTE
Sé si puedo autoamtizar todo el proceso? NO
NO SE SIQUIERA CUAL ES EL PROCESO QUE QUIERO AUTOMATIZAR. NO SE LO QUE VOY A ENCONTRAR.

Ni me lo planteo! No tengo el conocimiento necesario aún.

Y me pongo a trabajar.. sin más pretensión. Pero sabiendo que el día 1 del mes que viene, de los 10 centros que he planificado, DEJARE OPERATIVOS los que pueda.  MI PRIMERA ITERACION/SPRINT.

SPRINT 1: 10 centros... y a ser posible MUY DIFERENTES ENTRE SI! Muchas sorpresas/bombas! Cuánto antes salgan mejor.
No sé si llegaré, no sé si no llegaré a tener los 10 me refiero. ME IMPORTA? DA IGUAL. no es el objetivo de lo que estoy haciendo
Lo centros dan igual. Si no acabo 3.. para el mes siguiente. Si no acabo ninguno NO PASA NADA! Para el mes siguiente!
Lo que quiero es una fecha CERRADA, donde pueda disponer de información que me permita TOMAR DECISIONES CON MENOR INCERTIDUMBRE.
- En este mes, habré aprendido mucho!
  - Habré identificado las principales bombas y obstáculos. (habrá más.. por eso seguiré aplicando esto en BUCLE / ITERATIVAMENTE)
    - Sé que telefónica es un cuello de botella que tarda 3 meses en darme información -> PREGUNTEMOS YA! PARA TODOS LOS CENTROS!
  - Habré ganado experiencia práctica en el trabajo que me permitirá tomar mejores decisiones en el futuro.

CUANDO CREO EL PROYECTO, EL PROYECTO YA MARCA UN RUMBO!

Nuestro objetivo en este mes es ir desarrollando (Dios quiera que lo consiga... quiás aún no) un Mínimo Producto Viable (MPV) que nos permita aprender y tomar decisiones con menor incertidumbre -> 1 centro migrado

> OPCION 1 - Tradicional!

A los 3 meses te empiezo a migrar: 9 meses que quedan tengo que hacer 6000 -> 6000/9 = 666,66 por mes

    A los 3 meses empiezo
    A los 6 meses: 1500 centros
    A los 9 meses: 3200 centros
    A los 12 meses: 6000 centros

LETRA PEQUEÑA: Que sepas que estos datos me los estoy inventando! Y quizás va a llegar el mes 6 y tengo 2. Y vamos con retraso.

> OPCION 2 - Iterativa/Ágil

    En el primer mes: Prueba de concepto: Probar en 10 sitios. Necesito ver los problemas reales: TU LOS SABES?
    Y a pertir de ahí cada vez más:
    - A los 6 meses : 1500
    - A los 9 meses : 3200
    - A los 12 meses : 6000
    Lo que pasa es que entre medias, seguiré con mis pruebas de concepto.. a los 2 meses probaré en más... dependiendo de lo que haya salido en el primer mes. Quizás con muchos o con pocos... no lo sé. TENDRAS UN INFORME COJONUDO ! 
    Oye.. y lo mismo tienes suerte.. y desde ele mes 1, ya vas a ir teniendo centros disponibles.. es más... Aunque me comprometo a esas fechas, posiblemete te vaya entregando / migrando cada mes. Quizás a los 7 meses: 2000. QUIZAS!

LETRA PEQUEÑA: LETRA GRANDE: Al mes tendrás un informe cojonudo.. Y Si hay problemas grandes que puedan poner en riesgo estas estimaciones, AL MES YA TE VOY A INFORMAR.

# En las iteraciones/Etapas siguientes

Aquí es donde empiezo a aplicar esos conceptos de DEVOPS/NETDEVOPS: Voy a tratar de automatizar todo lo que pueda automatizar!
- Configuraciones de reglas en los firewalls                             -> Ansible
      TRADUCCION de las reglas del viejo al nuevo sistema
- Pruebas de que esas configuraciones y reglas funcionan correctamente   -> Ansible
- Extraer las actuales reglas de los routers que he de migrar.
- Monitorización AUTOMATIZADA del estado de los firewalls... con INDICADORES

IaC : Llevar control de versiones de las reglas de los firewalls / routers

Una vez tenga ciertas tareas automatizadas... me plantearé el automatizar PROCESOS

    Automatizar proceso de migración de reglas de router viejo a firewall nuevo:
    - Extraer reglas del router viejo
    - Traducir reglas al formato del firewall nuevo
    - Revisar que las reglas que han salido tienen sentido y buena pinta si las voy a meter en producción directamente
    - Aplicar reglas en el firewall nuevo               \
    - Verificar que las reglas funcionan correctamente  / A ser posible en un entorno de pruebas
    - Aplico las reglas en explotación
    - Pruebas de que todo funciona correctamente en producción
    - Y tengo planificado ROLLBACK, de ejecución automatizada <- CONTROL DE VERSIONES
    - Quitar las reglas de los routers (al menos algunas)
    - Probar que las reglas en los routers han quedado bien
    - Documentar todo el proceso y los cambios realizados

Hay ciertas reglas que puedo extraer en automático o migrar en automático y otras que no. Y las hago manual.

Eso me ayuda a poder avanzar de forma más eficiente, con menos probabilidad de errores, de forma más consistente...

Yo (GORRO DE GESTION DEL PROYECTO) no hago esas automatizaciones... YO IMPULSO LA CREACION DE TODO ESO!

SoC (Separación de Preocupaciones) = MUY SANO

El control de todas esas tareas a bajo nivel las haré con algún tipo de herramienta: 
- Redmine
- Gitlab
- ...

En esas herramientas habrá una cantidad ENORME DE DATOS.
Pero, una cosa es TENER DATOS y otra cosa es ENTENDER LOS DATOS!

Aquí nos echa una mano la ESTADISTICA! Es la que me ayuda a entender CONJUNTOS DE DATOS -> Cuadro de mando.
Hay mucha teoría sobre cuadros de mando.

## Cuadro de mando para nuestro proyecto

A qué preguntas quiero respuesta?
Un cuadro de mando no es una colección de gráficas e indicadores, coo el que colecciona estampitas!
- Dar visibilidad sobre el trabajo que hay actualmente
- Informar del Ritmo de trabajo
- Identificar si hay Problemas / Desviaciones con respecto a las expectativas o planes establecidos

Para nuestro proyecto, que cosas identificamos como necesarias en ese cuadro de mando:
¿A qué preguntas queremos responder?
- DATOS CLAVE: Número de grupos totales, Número de centros totales, Numero de equipos totales
               Número de grupos migrados, Número de centros migrados, Numero de equipos migrados
               Número de grupos en proceso, Número de centros en proceso, Numero de equipos en proceso
               Número de grupos pendientes, Número de centros pendientes, Numero de equipos pendientes
               Número de grupos enquistados, Número de centros enquistados, Numero de equipos enquistados
                ---> TABLA de los 5 más preocupantes... los que más enquistados están.

               Esto es una foto: Me da visibilidad del estado actual. Del trabajo que estoy haciendo y el que heh hecho. DE LA SITUACION DEL PROYECTO
               Pero me falta información del ritmo. Otra cosa es cómo la represento:
               - Seríe temporal
               - Puedo usar indicadores : +3/respecto al último mes

               Proyección a ver si llego o no llego. 

               Número de reglas migradas: DE DONDE SALE ESTO? 33
                Del Redmine.. quién lo ha metido en el redmine? Un compañero = RUINA !
                Ese dato es resultado de una PRUEBA (COMPROBACION, EXAMEN, TEST) ! A ser posible AUTOMATIZADA

              Cantidad de tiempo por unidad de trabajo: Cuanto tiempo invertimos actualmente en cada grupos, acls, centros, router...
              No me vale la foto... quiero evolución en el tiempo.

                Control de riesgos:
                - Estado de los firewalls (carga de trabajo): EVOLUCION
                - Cuanto tiempo tardan en contestareme los petardos de XXXX.
                - SLI / SLO / SLA Budget (presupuesto que tengo de indisponibilidad)

Y EN LO POSIBLE, TENGO QUE PONER UN ESFUERZO ENORME EN 2 COSAS:

- Automatizar la generación de ese cuadro de mando : TIEMPO REAL
- Controlar la calidad de los datos. BAJAR INCERTIDUMBRE

## Analisis de riesgos

Necesito identificar lo antes posible potenciales problemas que puede haber y tasarlos: Calcular un riesgo:

Riesgo = Probabilidad potencial de que ocurra el problema * Consecuencias del problema

Y esto me ayuda a priorizar las tareas. Y a tomar decisiones.
    Si no sé si los firewalls van a aguantar el trafico... BUF!
    Lo mismo se me cae el chiringuito entero más adelante... BUF!
    Esto hay que resolverlo.. Da igual la probabilidad de que eso ocurra. En este caso el impacto es ENORME!

Opciones que planteo -> TAREAS (ALTA PRIORIDAD)
- Migrando un monton de centros que pasen por el mismo firewall- Vamos a coge un caso donde sea más o menos sencillo hacer las migraciones y probar!
- Simulando trafico a través de los firewalls para ver si aguantan la carga
  - Pruebas de rendimiento: Cuanto impacta cada tráfico en el rendimiento del firewall . Como va volucionando con más y más peticiones.
  - Pruebas de carga: Con tráfico pesado
  - Pruebas de estrés: Con tráfico sostenido.

Si lo tengo en servicio (AUMENTA EL RIESGO) Y tomo decisiones. POR EJEMPLO NO USO EL FIREWALL REAL! O lo hago la prueba a deshoras! Hay que comprar otro. Hay que meter una ventana de indisponibilidad programada: El día 17 de 9-10 NO FUNCIONA LA RED: AVISO A TODO EL MUNDO 2 semanas antes

## Automatizar

Automatizar es caro y dificil!
- Caro... Cuesta MUCHO MAS ESFUERZO EN HORAS DE TRABAJO crear un programa que haga algo, comparado con hacerlo a mano.
- Dificil... Exige tener un CONOCIMIENTO MUY PROFUNDO DE LO QUE QUIERO AUTOMATIZAR.
    Cuando hago algo a mano, tengo la oportunidad de IR APRENDEIENDO DE ELLO. -> EXPERIENCIA
    Cuando automatizo, el conocimiento lo tengo que traer ya de casa!

    Herramientas como Ansible, Terraform NO ME PONEN LAS COSAS FACILES! Exigen mucho conocimiento previo y una comprensión profunda del sistema que quiero automatizar.

---

IDEMPOTENCIA [ En nuestro mundo (Crear programas de automatización) ] = Que cuando un programa se ejecute, con independencia del estado inicial del sistema, el resultado sea siempre el mismo.

Conseguir la idempotencia con lenguajes IMPERATIVOS es complejo (muchos IFs)

LA IDEMPOTENCIA ES LA QUE ME PERMITE:
- La vuelta a un estado previo (ROLLBACK a una versión estable/conocida del sistema)
- La reparación de cambios/errores que se hayan producido en un sistema
- ME PERMITE LLEGAR A LA VERSION DESEADA DEL SISTEMA

LENGUAJES DE PROGRAMACIÓN = Propósito: Lenguajes de propósito General vs Lenguajes de propósito Específico (dominio)
- Lenguajes de propósito General: Bash, Python, Java, C, etc.                          = ESPAÑOL
- Lenguajes de propósito Específico: Silbo Gomero, Matemático, Ansible, Terraform, SQL, etc.

        2 + 5 = 7
        Dos más cinco son siete
