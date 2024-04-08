# MODELO OSI

Capa 1: Capa Física (Physical Layer):

Esta capa se encarga de las conexiones físicas entre dispositivos de red. Define las características eléctricas, mecánicas y funcionales de los cables, conectores y otros dispositivos de hardware. Se ocupa de la transmisión y recepción de señales brutas a través del medio físico.
Capa 2: Capa de Enlace de Datos (Data Link Layer):

Esta capa se encarga del direccionamiento físico, acceso al medio y detección de errores. Agrupa los bits en tramas y añade información de control para permitir la comunicación confiable entre dispositivos adyacentes a través de un enlace físico.
Capa 3: Capa de Red (Network Layer):

La Capa de Red maneja el enrutamiento de datos a través de la red. Se encarga de la selección de rutas, la determinación de la mejor ruta y el control del tráfico. Los dispositivos de esta capa, como routers, utilizan direcciones lógicas (direcciones IP) para enviar paquetes a través de la red.
Capa 4: Capa de Transporte (Transport Layer):

La Capa de Transporte proporciona la transferencia de datos extremo a extremo y garantiza que los datos se entreguen de manera confiable y en secuencia. Se encarga de la segmentación, el control de flujo y la corrección de errores. Los protocolos comunes en esta capa son TCP (Transmission Control Protocol) y UDP (User Datagram Protocol).
Capa 5: Capa de Sesión (Session Layer):

La Capa de Sesión establece, administra y finaliza las sesiones de comunicación entre los dispositivos. Proporciona servicios de inicio, mantenimiento y finalización de sesiones, así como la sincronización de datos entre aplicaciones.
Capa 6: Capa de Presentación (Presentation Layer):

Esta capa se encarga de la representación de datos, la conversión de formatos y la encriptación de datos para garantizar que la información sea comprensible para las aplicaciones. También se ocupa de la compresión y descompresión de datos.
Capa 7: Capa de Aplicación (Application Layer):

La Capa de Aplicación proporciona servicios de red a las aplicaciones y permite a los usuarios interactuar con la red. Incluye protocolos de aplicación como HTTP, FTP, SMTP y DNS, que permiten la comunicación entre aplicaciones a través de la red.

# DCHP

# ROUTER

# IP ADDRESS



## Topologías de Redes
Las topologías de redes se refieren a la disposición física o lógica de los dispositivos de red, como computadoras, routers, switches, etc., y cómo están interconectados entre sí. Algunas de las topologías comunes incluyen:

**Bus:** Todos los dispositivos están conectados a un solo cable de red central. La comunicación se realiza enviando datos a través del cable, y todos los dispositivos reciben esos datos, aunque solo el dispositivo destinatario los procesa.

**Estrella:** Todos los dispositivos están conectados a un dispositivo central, como un switch o un router. Todos los datos pasan a través del dispositivo central, lo que facilita la administración y el diagnóstico de problemas.

**Anillo:** Los dispositivos se conectan en un bucle cerrado, donde cada dispositivo está conectado directamente a dos dispositivos adyacentes. Los datos se transmiten en una dirección alrededor del anillo hasta llegar al destino.

**Malla:** Cada dispositivo está conectado directamente a todos los demás dispositivos de la red. Esto proporciona redundancia y múltiples rutas para la comunicación, lo que mejora la fiabilidad pero puede ser costoso y complicado de gestionar.

**Híbrida:** Combina dos o más topologías básicas. Por ejemplo, una red puede tener una topología de estrella en cada uno de sus segmentos, pero estos segmentos se conectan a través de una topología de bus.

## Protocolos de Red

TCP (Transmission Control Protocol): Un protocolo de transporte que garantiza la entrega de datos de manera confiable en una red. Es utilizado por aplicaciones que requieren una comunicación confiable, como la navegación web, el correo electrónico, etc.

UDP (User Datagram Protocol): Un protocolo de transporte ligero que no garantiza la entrega de datos. Es útil para aplicaciones en tiempo real donde la velocidad es prioritaria sobre la precisión, como la transmisión de video o voz.

Servicios de Red:
DNS (Domain Name System): Un servicio que traduce los nombres de dominio legibles para los humanos en direcciones IP numéricas utilizadas por las computadoras para comunicarse en una red.

HTTP (Hypertext Transfer Protocol): Un protocolo de aplicación utilizado para transferir recursos, como páginas web y archivos multimedia, en la World Wide Web.

Conceptos de Redes:
Modelo OSI (Open Systems Interconnection): Un modelo conceptual que describe cómo las diferentes capas de software y hardware se comunican entre sí en una red de computadoras. Consiste en siete capas, cada una con funciones específicas que contribuyen a la comunicación de red.

TCP/IP: El conjunto de protocolos que subyace a Internet y que permite la comunicación entre dispositivos en una red. Incluye el Protocolo de Internet (IP) y varios protocolos de nivel superior, como TCP, UDP, HTTP, etc.

