
# Día 2

## Repaso de la jornada anterior

- Metodologías tradicionales vs Metodologías ágiles
    - Metodologías tradicionales: Se basan en un enfoque secuencial y planificado, con fases claramente definidas (análisis, diseño, implementación, pruebas, despliegue).
    - Metodologías ágiles: Se centran en la entrega incremental y continua de valor, con ciclos de desarrollo cortos (sprints), adaptándose a los cambios y fomentando la colaboración constante con el cliente.

    Metodologías tradicionales => HITOS -> Le dabamos importancia al paquete de tareas
    Metodologías ágiles => ITERACIONES  -> Le damos importancia a la fecha y entrego sin retraso lo que haya.

- Problemas de las metodologías agiles:
  - Las pruebas y las implantaciones (entregan) se multiplican! -> TIENE COSTE! Cómo lo bajo? Automatizando lo que pueda!


        TRABAJO QUE SACAMOS!
        ^
        |                                           |
  Mucho |-----                                 -----|
        |     \          Agujero              /     |
        |      --         Negro           ---       |
        |        \                       /          |
  Poco  |         -----------------------           |
       -+---------^--------^---------^--------^-----+---------> TIEMPO
        ^                                           ^
        Inicio                                   -> Fin          

- SDMC: Software development Managment Cycle
   Metodologías tradicional: Nos ayudan a GESTIONAR UN PROYECTO!
   Ciclo de vida de mi PRODUCTO: El producto evoluciona.. y va dando lugar a VERSIONES!
    En metodologías tradicionales, cada VERSION corresponde con un PROYECTO!
- DEVOPS
   Es la evolución del "Software development Managment Cycle":
   - Dando importancia/visibilidad NO SOLO al desarrollo del producto, sino también a su operación
 - Cambia el enfoque: YA no tengo una SECUENCIA de fases por las que mi producto pasa. 
   El producto esta EN TODAS LAS ETAPAS DEL CICLO DE VIDA, DESDE EL DESARROLLO HASTA LA OPERACIÓN. YA no hablamos de etapas... hablamos de TIPOS DE TRABAJOS, que se encadenan secuencialmente.
   El producto de uno pasa al siguiente:
        PLAN
        DESARROLLO
        EMPAQUETADO
        PRUEBAS
        LIBERACION/APROBACION/ACTO FORMAL
        DESPLIEGUE
        OPERACION
        MONITORIZACION
    NO ES UNA METODOLOGIA. ES UNA CULTURA, UNA FORMA DE ENTENDER LOS PRODUCTOS QUE HAGO Y COMO EVOLUCIONAN...Intentando AUTOMATIZAR todos los trabajos que puedo de por medio.

    Usamos herramientas para hacer esas automatizaciones.

    En nuestro mundo TIC AUTOMATIZAR = PROGRAMAR... En otros mundos AUTOMATIZAR = CREAR MAQUINAS + PROGRAMAR

    En una red trabajamos en 2 planos:
    - Físico -> También.
                El plano físico cada vez lo virtualizamos más... y en cuanto lo virtualizo... ya pasa a ser lano lógico!
                Cable siempre tenderé. Necesita siempre un switch, un router... FISICOS?
    - Lógico -> Esto aplica como anillo al dedo.
      - TODO (al 100%) el trabajo en el plano LOGICO puedo automatizarlo. Es decir, que ya no haya HUMANOS HACIENDOLO.
      - Lo que tengo es humanos haciendo programas que son los que automatizan el trabajo en el plano lógico.

## Automatizaciones (PROGRAMAR)

Para automatizar usamos distintos PROGRAMAS / Lenguajes. Hay muchos. Yo elijo los que me interesan usar.
Puedo usar varios. Cada uno tiene ventas en ciertos escenarios.. y a su vez eso le da limitaciones en otros.

Hay varias herramientas que hoy en día se han puesto de moda... y por un buen motivo:
- Ansible (Chef, Puppet, SaltStack)
- Terraform (Pulumi, CloudFormation)
- ...

¿Una buena pregunta sería por qué usamos estas herramientas? ¿por qué ansible y no scripts se toda la vida?

Lo que estamos es creando programas. Y cuando usamos un lenguaje de programación (que es lo que. usamos para crear programas) hacemos uso de PARADIGMAS DE PROGRAMACIÓN.
"Paradigma de programación" es solo un nombre (un tanto hortera) que los desarroladores ponemos a las distintas formas de usar un lenguaje al comunicarme (en este caso, con la máquina). Pero no es algo que solo encontremos en los lenguajes de programación. También lo teemos en los lenguajes naturales (los que hablamos los humanos).

> Menchu pon una silla debajo de la ventana                   IMPERATIVO!

Damos órdenes a la computadora.
Estamos muy acostumbrados al uso de paradigmas imperativos cuando hablamos con computadoras. TODOS los lenguajes tradicionales de programación siguen este paradigma en mayor o menor medida.
El problema viene cuando intentamos hacer scripts IDEMPOTENTES. Antiguamente NO NOS PLANTEABAMOS HACER SCRIPTS IDEMPOTENTES. Hoy en día es lo que queremos.

Qué significa IDEMPOTENTE?

Realmente es una propiedad de algunas operaciones matemáticas. Si aplicando una función varias veces de forma iterativa sobre un argumento y su valor on cambia -> Esa operación es idempotente.

    a x 1 = a x 1 = a
    |-4| = |4| = |4| = 4

Traído al mundo de los script/desarrollo, significa que quiero montar un programa que con independencia del estado inicial me lleve siempre al mismo estado final!
Y conseguir esto con paradigma IMPERATIVO es muy complejo!

> Menchu: SI (IF) hay algo que no sea una silla debajo de la ventana:    CONDICIONALES
>   Quítalo!                                                  IMPERATIVO
> Menchu: SI (IF) no hay una silla debajo de la ventana:    CONDICIONALES
>   Menchu: If not silla (silla == FALSE) :
>   GOTO IKEA:
>       Compra silla
>   Menchu pon una silla debajo de la ventana                   IMPERATIVO!

Y la que monto es fina! Se empieza a complicar, por un motivo: QUIERO IDEMPOTENCIA, es decir, da igual cómo te encuentres la habitación, siempre quiero la habitación al final con una silla debajo de la ventana.

Lo qu pasa es que hay otras formas de usar el lenguaje... más allá del imperativo:

> Menchu, Debajo de la ventana tiene que haber una silla. Es tu responsabilidad. DECLARATIVO

Le digo a Menchu COMO SON LAS COSAS.
El impacto es enorme : ACABO DE DELEGAR EN MENCHU LA RESPONSABILIDAD DE CONSEGUIR EL ESTADO FINAL.

Con lenguaje IMPERATIVO le voy pidiendo a Menchu tareas (que lleven a mi estado final deseado)
Con lenguaje DECLARATIVO le digo a Menchu cuál es el estado final que quiero conseguir, y es su responsabilidad lograrlo.

    El lenguaje DECLARATIVO YA IMPLICA LA IDEMPOTENCIA!

Ansible, Terraform funciona así, con paradigma DECLARATIVO.

Y por ende, que pinta tiene un script, digamos en TERRAFORM:

En mi red QUIERO:
   - Un router
   - Un Switch conectado al router
   - El router conectaado a una red que ofrece internet
   - El switch opera una red: 192.168.0.0/16
   - Quiero un NAT (Port forwarding) en el router: Peticiones externas 8080 -> 192.1682.17:80
   - Quiero...

Y si nos fijamos.. el script se acaba de convertir en un CATALOGO DE RECURSOS!

Puedo tener un catalogo de recursos (definición de mi red lógica/virtual) versión 1.
Puedo tener un catalogo de recursos (definición de mi red lógica/virtual) versión 2.
Puedo tener un catalogo de recursos (definición de mi red lógica/virtual) versión 3.

Y ahora solo tengo que decir. 
    APLICA la v1
    APLICA la v2                        El script que ejecuto AQUI
    APLICA la v3
    APLICA la versión 2 de nuevo!       Y AQUI es el mismo

    Pero parto de estados iniciales DISTINTOS... hay cosas diferentes debajo de la ventana.
    Como mi script es IDEMPOTENTE, el resultado final será consistente sin importar el estado inicial. Siempre llego a la V2
    Aunque lo ejecute desde la v8, el resultado final será el mismo.

Y esto nos resuelve COMPLETAMENTE LA PAPELETA del versionado, rollbacks y consistencia de estados finales.

Lo que quiero TIENE UNA RELACION CASI 1-1 con los REQUISITOS del proyecto/sistema!

Ansible / Terraform deben saber como operar el sistema concreto.. si no lo saben, te dirán que no pueden.
Por eso, fabricantes como CISCO crean "módules" de ansible o "providers" de terraform EXPLICANDO A menchu(ansible/terraform) cómo operar sus equipos.

IaC = Infrastructure as Code

Trata la infraestructura como código: Sometida a control de versiones.
Permite aplicar cambios de manera idempotente y consistente. Es decir, que me pueda mover por esas versiones como me dé la real gana!
Control de versiones implica muchas cosas:
- Rollbacks: Poder volver a una versión anterior si algo sale mal.
- Compara/Diferencias: Poder ver qué ha cambiado entre versiones (pero ojo.. no a nivel de documentación, que también, sino a nivel efectivo en recursos)
- Cuando se introduce algo/un cambio: Poder rastrear quién lo hizo, cuándo y por qué.
- Desaplicar cambios concretos.

Estos archivos en ansiboliano o terraformiano, los acabo guardando en un sistema de control de versiones: Gitlab (git).

# Cómo funciona estas herramientas de control de versiones.

Se basan en un concepto COMMIT: Es una fotografia competa de un proyecto en un momento dado del tiempo. (snapshot, backup).
No es un paquete de cambio (las dudas vienen porque otros sistemas de control de versiones antiguos, si usaban ese concepto: commit = conjunto de cambios... pero eso no pasa en git!).
Una cosa que me permite git es comparar el estado COMPLETO (BACKUIP, COMMIT) entre dos commits diferentes, viendo exactamente qué ha cambiado en el proyecto.

Los commits los hacemos en secuencia:
    C1 -> C2 -> C3

Pero... hay un punto importante aquí... si solo fuera esto, cuál sería la diferencia entre GIT y un sistema de BAKCUPS?
Realmente la diferencia entre GIT (SCM: Source Code Management) y un sistema de backups es que en estas herramientas NO TENEMOS SOLO UNA SECIENCIA DE COMMITS... tenemos VARIAS: BRANCHES / RAMAS.
Un proyecto EVOLUCIONA EN PARALELO de diferentes formas. Y voy controlando todas ellas.

Usar correctamente GIT (Y definir un FLUJO DE TRABAJO EN GIT para mi proyecto concreto) es clave para poder operar. Si no tengo un flujo claro , bien definido y que todo el mundo respete, el proyecto FRACASARA!

Al trabajar en GIT siempre tenemos lo que se llama la RAMA MAIN (master). Es una linea de evolucion de mi proyecto.. con algunas reglas:
- NADIE PUEDE HACER UN COMMIT (un backup) en esa rama.. bajo pena capital! Solo copio commits de otras ramas.
- Lo que hay en esta rama se considera APTO PARA EXPLOTACION!

SIEMPRE trabajamos con al menos otra rama: desa, dev, development, desarrollo.
- En esta rama, lo que hay es lo que esta APROBADO PARA SIGUINTE ENTREGA A PRODUCCION (ITERACION DEL PROYECTO)

                    ---main--C3                 <- Explotación
                            /
 ----dev----C1---> C2 --> C3                    <- Desarrollo/Pruebas/Pre
                          ^
                          Cada commit aporta 
                          una funcionalidad/cambio
                          al sistema

DEVOPS                      Automatizable?
    Plan                    Poco
    Code                    Cada vez más
    Build                   Totalmente
    Test
        Desarrollo/Diseño   Cada vez más
        Ejecución           Totalmente **
        ----> Integración Continua (Pipeline de Integración contiua: SCRIPT!)
    Release                 Release        <- Cerrar ciclo de desarrollo  Bastante automatizable
        ----> Entrega Continua
    Deploy                  Despliegue en explotación                     Bastante  automatizable
        ----> Despliegue Continua
    Operate                  Operación del sistema                        Bastante automatizable
    Monitor                  Monitoreo del sistema                        Automatizable   

Una cosa es automatizar TAREAS y otra AUTOMATIZAR PROCESOS!

    Yo puedo automatizar una prueba
    O puedo automatizar el proceso de despliegue en explotación de una configuración del sistema
        Para automatizar esto, necesito haber automatizado TODAS LAS TAREAS de ese proceso.
        Entre ellas pruebas!

Automatizar tiene un problema... (y muchas ventajas... ) quito al humano! Ya no hay oportunidad de que nadie revise!
Se hace "solo", sin intervención humana para verificar que aquello se haya hecho bien.
Es fundamental : TENER BUENAS PRUEBAS EN LAS QUE CONFIO.

** Nota: Hay pruebas y pruebas.. y no todas son automatizables.

Qué es una prueba? Cómo defino una prueba? Qué partes tiene una prueba?
- Una foto es una prueba? NO
- Cuando definimos una prueba, definimos 3 cosas:
  - Contexto en el que ejecuto la prueba
  - Acción que ejecuto (y que quiero probar)
  - Resultado esperado                        <--- Esto es la  comprobación en SI.. lo que debe ocurrir.

Una foto no es un resultado esperado. Cuando hago una foto, al final la prueba / la comprobación la hace un humano mirando la foto, y viendo queel equipo está conectaodo y las lucecitas encendidas!

> Quiero cuna prueba para la tarea ETIQUETAR EQUIPO: (Give, When, Then):

- Dado que tengo un equipo A que necesita ser etiquetado con la informacion X
- Cuando etiqueto el equipo y le saco una foto
- Entonces en la foto debe aparecer el equipo A con su etiqueta visible, y con datos X correctos.

La comprobación la puedo hacer yo: PRUEBA MANUAL
La comprobación la puede hacer una IA: PRUEBA AUTOMATIZADA.

> Quiero ver si consigo llegar a una ip (192.168.1.100 desde 192.168.1.102)

- Dado que tengo un entorno donde
- tengo un equipo con la dirección IP 192.168.1.100
- Y que tengo un equipo con la dirección IP 192.168.1.102 
- Cuando hago el ping a 192.168.1.100 desde 192.168.1.102 con cuenta 1
- Entonces: el comando ping debe devolver un código de salida de 0 y debe aparecer paquetes recibidos 1.

Monto un programa, que ejecuto en un entorno (CONTEXTO) que puede ser el contexto de producción op uno imulado o uno real.. similar / clon del entorno de producción.

Cuando defino pruebas hay ciertos PRINCIPIOS que aplicamos: FIRST

- F: Fast (rápidas)
- I: Independent (independientes)
- R: Repeatable (repetibles)
- S: Self-validating (autovalidables)
- T: Timely (oportunas)

# Foto final objetivo de todo este mundo DEVOPS y NETDEVOPS.

FASE 1: Integración continua
Una persona crea un programa (preferiblemente usando lenguaje declarativo) (Playbook de ansible)
Ese programa deja la infraestructura en una determina versión (IDEMPOTENCIA)
Esa persona sube el programa a un repositorio de control de versiones (Git, por ejemplo) en rama desarrollo.
Un programa (Pipeline de Integración continua):
    - Prepara un entorno de pruebas ( a ser posible EFIMERO, de usar y tirar, como los klennex)
    - Aplica en ese entorno el programa que descarga de GIT
    - Ejecuta en ese entorno las pruebas que se hayan definido
    - Para producir: INFORME DE PRUEBAS EN TIEMPO REAL
      Para que querría yo un informe de pruebas en tiempo real? 
        PARA SABER QUE TAL VA MI PROYECTO!
        Tu proyecto tiene 90 tareas
        De ellas tenemos pruebas dfinidas para 53
        De esas se han ejecutado bien 37 y fallaron 16.
        Comparado con la semana pasada, hemos creado/definido 7 pruebas adicionales y hemos conseguido ejecutar en total 9 pruebas nuevas bien.
            ESTO ES LO QUE ME DA VISIBILIDAD DEL ESTADO DEL PROYECTO REAL, para tomar decisiones y hacer una buen gestión del proyecto.

FASE 2: Despliegue continuo
- Una vez que lo de arriba me de verde! (PRUEBAS OK)
- Que se aplique eso en el entorno de explotación de manera automatizada y controlada.
- Que se hagan más pruebas (SMOKE TEST: Pruebas que comprueban el despliegue)

Montar este turrón lleva meses/años en una empresa.
El movernos hacia:
- Metodología ágil
- Cultura DevOps
- Automatización de tareas / pruebas
- Automatización de procesos
- Crear entornos simulados / alternativos
- Formar a la gente en todo esto!

Esto lleva meses/años. Es un trabajón! Y no es fácil.
Ahora.. cuando está montado... volamos!

Estas implantaciones van por fases!
- Vamos a ir automatizando alguna tarea! (CREANDO ALGUN PLAYBOOK)
- Vamos a ir sometiendo aquello a control de versiones
- Vamos a ir siendo más formales definiendo pruebas AUTOMATIZADAS
- Vamos a ir automatizando ALGUNOS procesos

Esto implica mucho conoceimiento de muchas herramientas y un cambio enorme de MENTALIDAD/CULTURA.
Aquí no hay una herramienta mágica... Tengo que adaptar CADA PASO a MI CONTEXTO, MI EQUIPO, MI PROYECTO y MI ORGANIZACIÓN.

---

El mundo de las IAs ha evolucionado un huevo!
El cocnepto de CHATGPT... eso ya no...
Las IAs (LLM) al principio era chatbots (realmente lo correcto sería decir que hablábamos con ellas vía un chatbot).
Y lo único que hacían era contestarme. PREGUNTA -> RESPUESTA.
Cuando usábamos la IA así, la IA era el tipo listo al que yo acudía cuando tenía un problema / duda...

Hoy estamos en el mundo AGENTICO de las IAs. LA IA ya no está confinada en el CHAT.
Si.. yo hablo con ella vía un chat. Pero la IA, además de contestarme a mi lo que hace es ESCRIBIR PROGRAMAS... y lo ejecuta.

HOY EN día con un programa PUEDO HACER CUALQUIER COSA EN EL PLANO FISICO!
Al ejecutar programas AUTOAMTIZAN muchas tareas que antes hacíamos los humanos..
AUTOMATIZAR = PROGRAMAR

El hecho es que antes eas máquinas/programas que automatizaban un trabajo los creaba YO.
Ahora los crea una IA por mi.

AQUI HAY MUCHO PELIGRO. Las IAs se equivocan, cada día menos.. pero se equivocan. Y siempre se van a equivocar.
El problema nbo es hacer una IA mejor.
El problema es que cuando se hacen estos trabajo HAY QUE TOMAR DECISIONES Y necesito decisiones ALINEADAS CON :
- Conmigo
- Con mi empresa
- Con mi proyecto
- Con mi cliente

Y la IA no tiene esa información, y no se la hago llegar con un texto/prompt/contexto.

Lo que si pasa es que puedo ir guiando a la IA.. muy despacito PERO TOMANDO YO TODAS LAS DECISIONES (y no lo ponen fácil).
Cuando usamos estos modos, EL TIPO LISTO DEBO SER YO. EL QUE TOMA LAS DECISIONES TENGO QUE SER YO.. PORQUE SOY YO QUIEN VA A VIVIR CON ELLAS, no la IA. Uso la IA como mis manos! Toma decisiones.. de junior, yo las superviso y corrijo.

Hoy en día, cuando trabajo con Ansible y creo programas en ansible (PLAYBOOKS) le pido a una IA que me eche una mano a escribir ANSIBOSIANO... son cojonudas. 

---

# Para que sirven las pruebas?

- Sirven para asegurar el cumplimiento de unos requisitos (funcionales/no funcionales)
- Para saber qué tal va mi proyecto!
- Para detectar la mayor cantidad posible de DEFECTOS antes de que lleguen a producción


Quiero comprobar que consigo acceder a una web desde un entorno X.
La web: 192.168.2.200 <- app1.miempresa.com:443
En esa web hay una ruta(endpoint) /health que si me devuelve un código 200 indica que la web está desplegada.

Pruebas:
- curl https://app1.miempresa.com/health 
- Y miro el código de salida:
  - Si es 200: PRUEBA OK
  - Si no es 200: PRUEBA FALLIDA

ME SIRVE CON ESTA PRUEBA? NO
- El problema no es si la prueba da OK! Si da OK, esta prueba es suficiente!
- El problema es si no da OK... si esa prueba falla. DONDE ESTA EL PROBLEMA? NPI.
    - Servidor caído
    - Servidor DNS Caído
    - Configuración inválida de DNS
    - No esta corriendo el proceso web
    - Problemas de firewall a nivel de máquina
    - Problemas de firewall a nivel de red
    - Problemas de conectividad de red
    - Problema de enrutamiento
    - Puede haber muchos problemas... PUES A PRUEBA POR PROBLEMA!

Y pasa algo bonito!

Cuándo voy a ejecutar estas pruebas?
- Lo primero antes del paso a explotación en un entorno de pruebas
- En el entorno de explotación, en un sistema de monitorización haría estas pruebas? Cada 10 segundos? A priori NO: Solo el curl!
- Ahora bien.. y si mal en explotación? Ahí si me interesa hacer todas estas pruebas.
- Y las tengo definidas? Si la respuesta es no:
  - Me toca, BAJO PRESION y gastando presupuesto del SLO, definir todas estas pruebas.
  - Oye Menchu, que esto no va! Qué pasa, Arreglalo! Incidencia!

Estas son las cosas que NO TENEMOS EN CUENTA cuando sacamos el diagrama de GANTT y las planificaciones de fechas!
La caída el sistema.. y la pasta que eso me cuesta.

NO ME IMPORTA LA PASTA QUE SE ME VA EN DESARROLLAR / IMPLANTAR ALGO. Desde el punto de vista de gestión ES IRRELEVANTE!
Evidentemente no.., pero si que hay algo que pesa mucho más... que quiero controlar MUCHO MAS: Coste de PROPIEDAD del sistema: 
En otras industrias le llamamos el Coste de Ciclo de Vida: LCC (Life Cycle Cost) en eel mundo IT le llamamos TCO (Total Cost of Ownership)
Ese es el dato que me interesa MINIMIZAR!
Y para minimizar el TCO me puede interesar SUBIR el costo de desarrollo. Está bien.. Pero es que no juego a corto!

---

Implantación.
Encaje de esto con lo que ahora hacemos y usamos (ITIL, REDMINE, etc.)
Cuadros de mando.

---

Que un programa funcione no es nada especial...no es la clave. Se da por descontado.
La clave es crear algo que sea fácilmente MANTENIBLE Y EVOLUCIONABLE. >> ESTO ES QUE ES LO IMPORTANTE ES LO QUE LAS IAs no hacen.Las IAs solo le dan importancia a que aquello funcione... Son como los JUNIORs

> Un producto de software por definición es un producto sujeto a cambios y mnto.