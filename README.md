Comando para construir una imagen:
docker build -t "percytataje10/orbis-training-docker:0.1.0" .

docker login
---> se inserta usuario y contraseña
docker push percytatadoje10/orbis-training-docker

docker tag percytataje10/orbis-training-docker:0.1.0 percytataje10/orbis-training-docker:0.2.0

docker push percytataje10/orbis-training-docker:0.2.0

PREGUNTAS:

1. ¿Qué importancia tiene los tags en un proyecto?
Te ayuda a llevar un orden en el avance del proyecto.

2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
la diferencia principal que un tag anotado tiene que tener una descripcion y el otro no.

3. ¿Cómo se sube todos los tags de git que hay en mi local?
git push --tags

4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
Si es necesario para poder tener acceso al id de usuario donde se subira la imagen.

5. ¿Qué es y para qué sirve docker?
Docker  es una plataforma de codigo abierto que sirve para poder implementar,ejecutar  aplicaciones dentro de contenedores.

6. ¿Cuál es la diferencia entre docker y VirtualBox (virtualización)?
Virtual box si o si se necesita instalar sistemas operativos, y docker se ejecuta en el demoen docker engine que se esta ejecutando en background.

7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
SI

8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?
Para identificar el usuario o cuenta

9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?
latest

Para cargar la nueva imagen se siguieron los siguientes pasos:
Construir la imagen desde el dockerfile
 docker build -t "percytataje10/orbis-training-docker:1.0" .
 ejecutar la imagen
 docker run -p 1080:80 percytataje10/orbis-training-docker:1.0



PASO 6-----------

1 ¿Qué es NGINX?
Es un servidor web/proxy de codigo abierto.

2. ¿Cómo expongo puertos en docker?
con el comando EXPOSE en el Dockerfile

3. ¿Cómo especifico los puertos al levantar un contenedor (docker run)?
docker run -p 1080:80 percytataje10/orbis-training-docker:1.0

4. ¿Cómo hago 'forward' al levantar un contenedor (docker run)?
docker run -p 127.0.0.1:1080:80 percytataje10/orbis-training-docker:1.0

verificar que se genere la carpeta con el nombre erificaerificar que se genere la carpeta con el nombre 

==============================================================================================================

Parte 7:
5.- 
Se creo la imagen para crear el contenedor.

docker build -t "percytataje10/orbis-training-docker:2.0" .
docker run -v $PWD:/app -w /app percytataje10/orbis-training-docker:2.0 npm install

¿Qué pasa si no especifico el directorio de trabajo?
No encuentra el archivo especifico (package.json) ya que no se apunto el workdir 

6.-
Se usa el comando:
docker run -p 1042:3030 -p 35729:35729 -v $PWD:/app -w /app  percytataje10/orbis-training-docker:2.0 npm start
¿Porqué el puerto 3030?
Se levanta el server en este puerto para escuchar los camnbios.
¿Porqué el puerto 35729?
Por que Si no levanto ese puerto no se escuchara automaticamente los cambios.

10.
docker run -p 1042:3030 -p 35729:35729 -v $PWD:/app -w /app  percytataje10/orbis-training-docker:2.0 npm run release

Preguntas

1. ¿Es necesario especificar el `workdir` en docker?, ¿Porqué?
Es necesario para inicializar la carpeta de inicio.
2. ¿Que hacen los siguientes comandos? 
 -`docker ps`
 Solo muestra contenedores en ejecucion.
 -`docker pull`
 Extraer una imagen o un repositorio de un registro
 -`docker push` 
 Sube la imgen a un repositorio o un registro
 -`docker rm`
 Se elimina el contenedor si es forzado -f
 -`docker rmi`
 Se eliminar una imagen si es forzado -f
 -`docker run`
Se ejecuta un container
 -`docker tag`
 Se tague el contenedor para subirlo al repositorio
 -`docker search`
 Busca las imagenes subidas en un repositorio de la nube(docker hub)
 -`docker login`
 Accedo a docker hub con mis credenciales
 -`docker exec`
 Ejecutar un comando  en un contenedor que esta en ejecucioon
 -`docker build`
 Construye una imagen desde docker file
 -`docker inspect`
 Devuelve informacion de bao nivel de los contenedores
 -`docker network`
 Muetsra las conexiones que hay con el contenedor


Parte 8
1. Crear un contenedor que ejecute el comando curl a la url expuesta del proyecto realizado en el paso 8.   
docker inspect id_container
 docker run --network capacitacion-problema1_default node:10.10.0-slim curl http://172.24.0.2:3030/
    
2. Crear otro servicio llamado test en el archivo docker-compose que realice lo mismo que el paso anterior

 curl http://172.24.0.2:3030/

3. Crear un archivo llamado example.sh dentro de la carpeta resources
 docker run -it -v $(pwd):/app -w /app percytataje10/orbis-training-docker:2.0 sh resources/example.sh



4. Pasar una variable llamada NOMBRE, por el comando docker run y modificar el saludo a mostrar
 docker run -e VAR="TATAJE" -it -v $(pwd):/app -w /app percytataje10/orbis-training-docker:2.0 sh resources/example.sh


docker run -e VAR="TATAJE" -it -v $(pwd):/app -w /app percytataje10/orbis-training-docker:2.0 sh resources/emtrypoint.sh
docker run --entrypoint=./resources/entrypoint.sh -it -v $(pwd):/app -w /app percytataje10/orbis-training-docker:2.0

1. ¿Qué es bash? ¿Qué significa?
Bash es un programa informático, cuya función consiste en interpretar órdenes, y un lenguaje de consola
2. ¿Cómo ejecuto un archivo bash?
sh miscript.sh
3. ¿Qué pasa si no especifico en un `.sh`, la linea `#!/bin/bash`?
No lee el entrypoint
4. ¿Se puede cambiar el modo bash (`/bin/bash`) a otro tipo de ejecución?
si, nib bash sirve para entrypoint , relick otro tipo de ejecucion.
5. ¿Cómo se envía variables de entorno por Docker CLI y docker-compose?
-e var= "var"