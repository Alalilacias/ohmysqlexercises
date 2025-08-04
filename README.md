# OhMySqlexercises

Este repositorio contiene la prueba de BBDD para la entrevista con OhMyCode.

## Requisitos previos

Este repositorio utiliza docker para hacer un contenedor básico de MySQL con el que interactúan las queries. Es necesario tener Docker instalado para poder acceder a su funcionamiento de manera más sencilla.

## Ficheros Auxiliares

De cara a un funcionamiento más sencillo, en el directorio ```/scripts``` se pueden encontrar ficheros auxiliares. Por limitaciones de tiempo, tan sólo el funcionamiento del fichero ```sqldock_funcs``` funciona actualmente.

## Uso

Para ejecutar la base de datos, utilizar Docker Compose para construir el contenedor y realizar peticiones a este. En Linux, esto se hace con el comando:

```docker Compose up --build```

Una vez construido el contenedor, si se pretende hacer uso de las queries se puede acceder a la consola del contenedor o utilizar comandos de manera directa a través de la interfaz de línea de comandos (CLI) usando el comando ```docker exec```. Para más información, mirar la [documentación](https://docs.docker.com/reference/cli/docker/container/exec/).

Algunos de los comandos que se utilizaron durante la preparación del repositorio fueron:

- Acceder a consola interactiva de la base de datos del contenedor:
```
docker exec -it <nombre_contenedor> mysql -uroot -p<contraseña>
```

- Ejecutar un comando específico:
```
docker exec -it <nombre_contenedor> mysql -uroot -p<contraseña> -e "<comando>"
```

- Ejecutar un fichero con comandos:
```
docker exec -i <nombre_contenedor> mysql -uroot -p<contraseña> < ruta/al/fichero.sql
```

La consola dará un aviso de que utilizar la contraseña de manera directa en la consola es peligroso, pues la consola automática loga todo comando. No obstante, por ser esta una base de datos de prueba, es seguro ignorarla. Si se prefiere evadir el aviso, se puede retirar la opción -p y el terminal pedirá la contraseña con cada ejecución.