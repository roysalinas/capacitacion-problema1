Comando para construir una imagen:
docker build -t "percytataje10/orbis-training-docker:0.1.0" .

docker login
---> se inserta usuario y contraseña
docker push percytatadoje10/orbis-training-docker

docker tag percytataje10/orbis-training-docker:0.1.0 percytataje10/orbis-training-docker:0.2.0

docker push percytataje10/orbis-training-docker:0.2.0


