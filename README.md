# focus-ssr


Servicio esta corriendo en 137.184.241.226

Hay dos Dockerfile, una para la imagen donde corre Flask y la otra es para el gninx con la configuracion para que funcione como proxy hacia el servidor gunicorn.

En el docker-compose.yaml utilizo esas imagenes en el repositorio de docker

Estoy usando KOMPOSE para convertir el docker-compose.yaml en deployments y servicios. posteriormente creo un loadbalancer para el servicio proxy poder acceder al contenedor.