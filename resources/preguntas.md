# Ejercicio 1
Capacitación: Git, bash y docker
Integrantes:
- Victor Percy Tataje Guzman
- Carlos Montemayor
- Moises Tiburcio
- Luis Tupa (Panchito, karaoke)

1. ¿Qué es y para qué sirve GIT?
 Software de control de versiones , que nos permite mantener el control de los cambios que se realizan durante el desarrollo de todo el proyecto.
2. ¿Que es Github o bitbucket?
 Github o Bicbucket es una plataforma para alojar proyectos utilizando el sistema de versiones de git.
3. ¿Qué es y para qué sirve el SSH?
SSH es un protocolo que facilita las comunicaciones seguras entre dos sistemas usando una arquitectura cliente/servidor y que permite a los usuarios conectarse a un host remotamente.
4. ¿Que pasa si cambio de PC? ¿Tendré que generar el SSH nuevamente?¿Por qué?
Si, por que el ssh se genera de forma manual y unica en la pc y este recien podra ser configurar en la plataforma de versiones.
5. ¿Qué es markdown? ¿Para qué sirve?
Markdown es una forma sencilla de agregar formato a textos web. Con formato nos referimos a itálicas, negritas, listas, y más, en texto plano por ejemplo, el texto que nos encontramos en el visor de HTML de los editores de blogs, o en el Bloc de Notas de Windows, para hacer el concepto más asequible
6. ¿Cómo inicializo y configuro un proyecto de git?
Inicializo con git init y configuro con git config para los usuarios y email del sistema control de versiones.


https://bitbucket.org/snippets/orbisunt/rez9zL

Parte 5
¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
El contenedor con la bandera it se permite interctuar para pode ejecutar comandos.
EL contenedor ejecuta una vez y muere.

¿Para qué sirve ejecutar el comando bash al ejecutar una imagen?
Para entrar a la consola del contenedor.

 ¿Cuál es la diferencia entre docker ps y docker ps -a?
 docker ps -a = muestra todos los contenedores.
 docker ps = muestra los contenedores activos.
 
 docker run -it namecontainer  ls /app
 
 1. ¿Cuál es la diferencia entre una imagen y un contenedor?
    Las imágenes se utilizan para crear contenedores, y nunca cambian.
    Los contenedores son instancias en ejecución de una imagen. Son los que ejecutan cosas, 
    los que ejecutarán nuestra aplicación. El concepto de contenedor es 
    como si restauráramos una máquina virtual a partir de un snapshot.
 
 2. ¿Cómo listo las imágenes que hay en mi computadora?
 docker images
 
 3. ¿Cómo salgo de un contenedor de docker?
 exit
 4. ¿Se elimina el contenedor al salir de ella?
 No
 5. ¿Cómo elimino un contenedor?
 docker rm idcontainer
 6. ¿Para qué es necesario el flag `-i`, `-t`, `--rm`?
-i = interactivo
t = interactuar con el terminal
--rm = eliminar
 
 7. ¿Cómo verifico que el archivo creado se encuentra en la imagen?
 docker run -it idcontainer ls ruta_archivo
 
 8. ¿Cómo se comenta una linea de código en Dockerfile?
 '#'