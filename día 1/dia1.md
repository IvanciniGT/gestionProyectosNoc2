
# Gestión de Proyectos IT

En el mundo del desarrollo de softwarehemos cambiado la forma en la que gestionamos proyectos

Cuando empezamos, no controlabamos los proyetcos directamente. Reinaba la anarquía.
Gran crisis del software: Finales de los años 60. Después de 2 décadas que ya llevábamos creando software colapso el sistema. Plazos de entrega que so cumplían por mucho, sistemas que era necesario rediseñar enteros. Errores frecuentes y costos desorbitados.

El problema era la falta de muchas cosas:
- Metodologías de gestión de proyectos
- Estándares de calidad
- Procesos definidos
- Herramientas adecuadas
- Arquitecturas
- Patrones
- Principios de diseño de software

Casa persona hacía lo que podía.

Aquí comienza un concepto / disciplina nueva: Ingeniería de software.
La idea era dar todas esas cosas.. poner orden en los proyectos de dsarrollo de software.

Qué paso? Nos fuimos al extremo: 
- Burocracia al extremo
- Procesos rígidos y excesivos
- Departamentos centralizados y jerárquicos
- Falta de flexibilidad y adaptación al cambio

En muchas empresas seguimos viviendo aquí!

Comenzamos a desarrollar metodologías para la gestión de proyectos de software.

La que más usábamos: Metodología en cascada (Waterfall)... y variantes de la misma (V, espiral...)

    -> Toma de requisitos
    -> Análisis y diseño de la solución
    -> Implementación
    -> Pruebas
    -> Despliegue
        -> Mantenimiento

Problemas:
- Procesos muy rígidos y burocráticos
- Difícil adaptación a cambios en los requisitos <--- Esto es lo que nos mata.

En el mundo ITC... los requisitos cambian mucho... con el tiempo.
Por qué?
- Que el cliente no lo tenía muy claro a priori.
- Cambios debidos al entorno del negocio o del mercado
- Fallos míos en la toma de requisitos (soy humano)

Cómo lo resolvemos... Hacía donde se ha movido la industria: metodologías ágiles.

En el mundo IT entran por el desarrollo de software.. después se expanden a todo. Pro no viene de ahí.. de hehco viene de las fabricas de coches de toyota.

## Metodologías ágiles.

La idea principal que subyace es:

> Voy a entregar el proyecto a mi cliente de forma INCREMENTAL.

Antiguamente entregaba el proyecto una vez había finalizado. Esto era un problema... a la hora de obtener FEEDBACK de mi cliente. 
Cada poco tiempo le hago entrega de lo que tengo hasta ese momento. No me espero a tenerlo todo para entregar.

ESTO CAMBIA TODO!
Ventajas desde el punto de vista de mi cliente:
- Desde el principio puede ir haciendo uso de algunas cosas.. le aporta valor.
- Aprendizaje y familiriadad con el entorno desde el primer momento
- Posibilidad de dar feedback temprano y ajustar el proyecto según sus necesidades

Desde mi punto de vista.. el que lo crea.. el que hace el proyecto. Ventajas:
- Feedback temprano, me ayuda a reducir costes. Si ya le he entregado el sistema completo, el hacer un cambio puede impactar al sistema completo.
  Si solo he entregado una parte, el cambio impactará solo en esa parte. Potencialmente imactará en las nuevas cosas que vaya entregando más adelante... pero esas aún no estaban desarrolladas... por lo que ahorro mucho.. trabajo, esfuerzo, dinero.
- Replanificar ajustando prioridades y recursos según el feedback recibido.
- Trabajamos con objetivos/entregables más pequeños.
- Mejor control del proyecto y de sus tiempos. <<<<

Desde mi punto de vista... vemos inconvenientes?
- Molestias al cliente. LAS PODEMOS GESTIONAR DE ALGUA FORMA.
-
-

### Control de proyectos. Antes vs ahora

#### Metodologías tradicionales

- Planificación exhaustiva al inicio del proyecto. Trabajamos mucho con Ms PROJECT.
  Diagramas de Gantt. Planificaba hasta la última tarea del proyecto.
    - Menchu el 17 de Agosto de 2027 va a estar haciendo tal cosa que es tarea clave para Federico, que entra al día siguiente a hacer tyal otra, y va a tardar  17 horas exactas, ni minuto más ni minuto menos en hacerlas.
- Esas tareas las agrupábamos en HITOS.

    HITO 1: 10 Febrero: Tarea 1, Tarea 2, Tarea 3
        Qué pasaba si el día 10 de Febrero la tarea 3 no estaba hecha?
            - Ostias pa' tos laos!
            - Suenan las alarmas
            - Replanificar el hito. Nueva fecha: 20 de Febrero... para hacer seguimiento: VAMOS CON RETRASO!
    HITO 2: 20 Febrero: Tarea 4, Tarea 5, Tarea 6
    HITO 3: 30 Febrero: Tarea 7, Tarea 8, Tarea 9
    ...
    HITO N: Fecha final: Tarea X, Tarea Y, Tarea Z

### Metodologías ágiles

- NO HAGO una planficiación exhaustiva al inicio del proyecto. Para qué? PAra tachaduras? PASO!
  NO ADIVINO EL FUTURO, ni gasto tiempo en ello.
  SOLO PLANIFICO LA SIGUIENTE ENTREGA.

  ITERACIÓN 1: 10 de Febrero: Tarea1, Tarea2, Tarea3
    ¿Qué cambia en el concepto de ITERACION vs HITO?
    - Solo planifico como mucho un par de ellos.. a la vista.
    - Los hitos eran de control interno. Las iteraciones son de control externo, visibles para todos. ENTREGAS AL CLIENTE!
    - Ahora le damos importancia a la fecha.
        Qué pasaba si el día 10 de Febrero la tarea 3 no está hecha?
            - Ostias pa' tos laos!
            - Suenan las alarmas
            - Entrego lo que tengo: Tarea 1 y tarea2
            - La tarea 3, pasa a la siguiente ITERACIÓN.
        No muevo la fecha!
        Vamos con retraso!     
        Pero ahora el retraso queda evidenciado, expuesto. Y no bloquea el trabajar en nuevas tareas.
  ITERACIÓN 2: 20 de Febrero: Tarea4, Tarea5, Tarea6
  .. no planifico más.


### Sobre las iteraciones

    ITERACION 1, Tarea 1, Tarea2
        Esto implica una entrega, y que mi cliente comience a usar el producto.
        Qué necesito hacer antes de la entrega? 
        - Pruebas, no de andar por casa..... no de las que hago en mi entorno... por encimilla.
        - Pruebas de verdad de la buena.. que vamos a producción!
        Qué tengo que probar en esta ITERACION1 ? La tarea1 y la tarea 2

    ITERACION 2, Tarea 3, Tarea4, Tarea 5...
        Esto implica una entrega, y que mi cliente comience a usar el producto.
        Qué tengo que probar en esta ITERACION2 ? 
        - La tarea 3, tarea 4 y tarea 5
        - Tengo que probar de nuevo tarea1 y tarea2... que no haya roto nada.. que he tocado cosas.

    ITERACION 3, Tarea 6, Tarea 7...
        Esto implica una entrega, y que mi cliente comience a usar el producto.
        Qué tengo que probar en esta ITERACION3 ? 
        - La tarea 6 y tarea 7
        - Tengo que probar de nuevo tarea 1 y tarea 2, tarea3, tarea4 y tarea5... que no haya roto nada.. que he tocado cosas.

    Cuando usaba metodologías "tradicionales" cuántas veces hacía pruebas?
    1 al final

    Y Ahora? Me paso el día haciendo pruebas! Las pruebas crecen como enanos... se me multiplican!

    Luego hay otro tema...
    Todo el trabajo se hace sobre en entornos de producción?
    Trabajo en otro entorno distinto.
    .. por ejemplo.. quierop configurar unas reglas de red en un firewall Cisco que tengo.
    Esas reglas las meto directamente en el cisco? No... Tendré otro entorno, físico o virtual.. espero.

    Antiguamente, cuántas veces desplegaba en explotación? 1.. al final del proyetco
    Ahora, con las met. ágiles.... cuántas veces despliego en explotación? En cada ITERACION!
        Esto multiplica:
        - Esfuerzos
        - Riesgos

De donde sale la pasta? Y el tiempo? Y los recursos? Para tanta prueba y tanto despliegue? AUTOMATIZAR.. no hay otro sitio.

O automatizo trabajos o no hay forma de aplicar este tipo de metodologías ágiles de manera eficiente.


### Extraído del manifiesto ágil:

> El software funcionando es la medida principal de progreso. << HABLA DE UN INDICADOR DE UN CUADRO DE MANDO!
> El sistema funcionando es la MEDIDA principal de progreso.

El sistema funcionando es la MEDIDA principal de progreso.
La MEDIDA PRINCIPAL de progreso es el "sistema funcionando".
La forma en la que voy a medir que tal vamos en el proyecto es mediante el concepto "SISTEMA FUNCIONANDO".

La frase habla de cómo puedo saber que tal voy en el proyecto = CRITICO EN GESTION DE PROYECTOS!

La primera pregunta que sale es : ¿Por qué leches han puesto esto en el manifiesto ágil?
Porque antes no se hacía así!
Cómo se hacía antes? el determinar qué tal va el proyecto?
- Mirando cuantas tareas había "supuestamente"completadas ... en base a lo que mi equipo (humanos) me iban contando.

> Quién dice que el sistema está funcionado adecuadamente? EL CLIENTE!

Me compro un coche. Voy al concesionario.. y digo quiero este coche. Pero funcionará no? Y el tio va y me dice: Ah no se... llevatelo , lo pruebas y ya me dices tú!

EL CLIENTE NUNCA ME PUEDE DECIR QUE EL SISTEAM FUNCIONA ADECUADAMENTE. Eso es reponsabilidad 100% mia. Al cliente le tiene que llegar un sistema 100% FUNCIONAL.

Soy un sastre haciendo trajes. Cuando le llevo el traje al cliente, el traje está acabado!, con botones, bien cosidos, que no se sueltan cuando intento abrocharlos, con costuras que no se suelta, cuando el cliente mete la manga!

Otra cosa es si el tyraje le sienta bien a mi cliente! Y si se siente cómodo con él.
O que yo me haya equivocado en las medidas del cliente (REQUISITOS). O que el haya engordado (Cambios en los requisitos).

El cliente cierra el proyecto... pero el tema no es el cierre. El tema es la gestión intermedia! El año que estoy de proyecto y que me pregunto: COMO VOY?

> Quién dice que el sistema está funcionado adecuadamente? LAS PRUEBAS!

### PRUEBAS

Una forma de claseificar las pruebas e según el contexto en el que se realizan:
- Pruebas unitarias
- Pruebas de integración
- Pruebas de sistema                    Para ver si el sistema se ajusta a requisitos (funcionales y no funcionales)
  -----
- Pruebas de aceptación                 Para ver si al cliente le sienta bien el traje, si le vale el ferrari.

Las pruebas de aceptación cuándo se hacían con met. tradicionales? Con la entrega. 1 vez.
Ahora se hacen cada entrega.

#### Vocabulario que usamos en el mundo del testing (no solo de software... extrapolar)

- Error         Los humanos cometemos errores
- Defecto       Al cometer un error puedo introducir un DEFECTO en el producto
                Es la cicatriz que queda en el producto consecuencia de un error humano.
- Fallo         que puede manifestarse al usarlo (FALLO)
                Es una desviación con respecto al comportamiento esperado del producto.

Puedo arreglar un error? NO. es un evento pasado.
Puedo arreglar un FALLO? NO. es un evento pasado. Tendré que lidiar con sus consecuencias... 
Lo único que puedo arreglar es el DEFECTO, que es lo que PERMANECE en el producto.
    Y ahí hablamos en software de DEBUGGING.

## Devops

Es una cultura, es una filosofía, un movimiento en pro de la AUTOMATIZACION.
Quiero automatizar TODO lo que pueda en un proyecto.

                                                Automatizable?
    PLAN                                            NO MUCHO
     CODE - DESARROLLO                              CADA VEZ MAS
       BUILD - EMPAQUETADO
         TEST - PRUEBAS
           RELEASE - LIBERACION
             DEPLOY - DESPLIEGUE
               OPERATION - OPERACIÓN 
                 MONITOR - MONITORIZACIÓN
                 
Hoy en día, entiendo que el sistema está en todas esas fases simultáneament.. y por siempre!

### Ansible

Qué es ansible y para qué se usa?

Es una herramienta para automatizar (crear programas que hagan lo que antes hacía un humano) tareas de configuración/administración/operación de infraestructura / sistemas.

Antes, el trabajo de un Administrador de red, consistía en entrar en un equipo y cambiarle su configuración.
Hoy en día, el trabajo de un Administrador de redes ha cambiado. Ahora su trabajo es CREAR PROGRAMAS que entren en los equipos y realicen las configuraciones necesarias.

Ya no quiero a un técnico entrando a un equipo haciendo cambios manualmente.
Lo que quiero es al técnico CREANDO UN PROGRAMA (DESARROLLANDO SOFTWARE) que automatice las tareas que antes hacía manualmente.

¿Por qué no quiero al técnico entrando a mano?
- Evitar errores humanos.
- Ganar tiempo para tareas repetitivas. Toda tarea se repite? DEBERIA.. al menos 2 veces: Entorno de explotación y en uno previo (como quiera llamarlo)
- Estandarización de los procesos de trabajo
- CONTROL DE VERSIONES SI LO HAGO BIEN!

Todo esto engancha con un nuevo concepto: IaC (Infrastructure as Code)

Infraestructura como código NO ES escribir un programa que configure un equipo.
Es tratar la infraestructura como si fuera código, es decir, definirla y gestionarla como si fuera un programa de software. ESTE EL MUNDO DE HOIY EN DIA! Y lo primero es someterla a CONTROL DE VERSIONES.

Dónde está la gracia de esto? De someter la infra a control de versiones? Lo estaís haciendo? NO
Cuál es la gracia? Para que quiero un control de versiones en la infra?
- Para saber dónde estoy!
- Para saber de dónde vengo.. y poder auditar los cambios realizados.
- Para poder revertir cambios si algo sale mal.
En el mundo del software (y hoy en día en la infra) usamos lo que se llama el esquema semántico de versionado (semver)

vA.B.C              v1.4.3

            ¿Cuando suben?
A MAJOR     Breaking changes!
            Cambios que rompen compatibildiad con versiones anteriores.
            Básicamente CUADNO QUITO ALGO (con o sin reemplazo)
B MINOR     Nueva funcionalidad
            O marcar funcionalidades como obsoletas (deprecated)
C PATCH     Corrección de DEFECTOS (BUGS)

- Tengo una red configurada... Y hay problemas en las comunicaciones de los sistemas que hay por encima.. El MTU estaba muy bajo. Lo subo. Qué tipo de cambio es? PATCH... Es un defecto en la configuración. La red no existe per se. Existe con un propósito... permitir la comunicación de sistemas que la usan. Si no está permitiendo esa comunicación, es que no hace bien su cometido. Tiene un defecto.
- Me piden que configure un NAT para un nuevo servicio. MINOR
- Camnbio en un protocolo de VPN. MAJOR. La gente que estuviera usando esa versión de la infra, al hacer este cambio, podría seguir uándola normalmente? NOP.. necesitan ajustarse. Genera una INCOMPATIBILIDAD.

De hecho, a nivel de gestión, los que más dolores de cabeza me dan, y donde debo poner el foco MAJOR.

Tengo una versión de la infra... con una funcionaldiad 1.4.
La funcionalidad la marcan la pareja MAJOR.MINOR.

Tendré la 1.4.1... donde introduje una correción a un defecto que tenía.

Lo que quiero es poder pasar a la 1.4.0... si la he cagado al corregir el bug.
O saber que cambios se han incorporado de la 1.4.1 a la 1.5.0, para evaluar el impacto de la actualización.

Y quiero llevar un CHANGE LOG:

Un CHANGE LOG es un registro de los cambios que se han realizado en cada versión de un software o infraestructura. Me permite saber qué se ha modificado, añadido o corregido, y evaluar el impacto de actualizar a una nueva versión.

Para hacer este control, no necesito ni programas.
Lo que quiero es tratar la infra como si fuera un programa:
IaC = Infrastructure as Code.

ESTO ES CLAVE PARA GESTION DE PROYECTOS.

En el mundo del software, que son proyecto EXTRAORDINARIAMENTE COMPLEJOS se lleva haciendo décadas.
Y son proyectos de los más complejos que existen.

## Qué es Automatizar?

Automatizar es crear una máquina (o cambiar el comportamiento de una mediante un programa) que haga lo que antes hacía un humano con sus manos.

Puedo automatizar el lavado de la ropa (LAVADORA), que puedo incluso cambiarle su comportamiento con programas (PROGRAMA DE LAVADO: ropa delicada, algodón a 60º...).

En el mundo ITC ya tenemos la máquina, no hay que crearla: COMPUTADORA.
Para nosotros (mundo ITC) automatizar es CREAR PROGRAMAS! = DESARROLLO DE SOFTWARE!

## Diferencia entre tareas y procesos.

- Tarea: Es una actividad específica que realiza una persona o un sistema. Tiene un inicio y un fin claros.
- Proceso: Es un conjunto de tareas interrelacionadas que buscan un objetivo común: PRODUCTO.

Para automatizar un proceso, primero tengo que haber automatizado TODAS LAS TAREAS que lo componen.

> Subir una persiana... 

Tengo una persiana de cuerdita! La subo y bajo tirando de la cuerdita.
Le cambio la cuerdita por un motor y un botón.

He automatizado el proceso de subir/bajar la persiana?
NO... he automatizado una tarea, pero no el proceso..
Sigue siendo necesaria intervención humana:
- No so solo apretar el botón
- Tomar la decisión de cuándo subir o bajar la persiana, cuándo apretar el botón.
        Apretar botón: EJECUTAR EL PROGRAMA!

Podría montar un sensor de luz, una centralita que recibe sus datos y decide automáticamente cuándo subir o bajar la persiana. Cuando tome decisión esa centralita "APRIETA" el botón por mí.

Si monto esto, ahora si tendré el proceso AUTOAMTIZADO.

Cuando automatizo, me tengo que plantear qué quiero automatizar... y va por fases.
- Primero automatizo tareas individuales / sueltas.. que requerirán de intervención humana para su ejecución (ni que sea para darle al play-botón.)
- Una vez que todas las tareas de un proceso estén automatizadas, puedo automatizar el proceso completo, reduciendo o eliminando la intervención humana.

## Ventajas de automatizar:

- Hacer las tareas más rápido
- Asegurar consistencia en los trabajos
- Reducir errores. Los hamos cometemos errores (errar es humano, las máquinas no cometen errores.)

## ITIL

- Colección de buenas prácticas
- Vocabulario común en la gestión de servicios IT
- Definición de procesos