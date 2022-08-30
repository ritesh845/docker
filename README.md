
Docker 

--- Docker Hub
--- Docker File    (IS use for create docker image)
--- Docker Images
--- Docker Container 
--- Docker Volume
--- Docker Compose  (IS use for create docker container)
--- Docker Network
--- Docker Swarm 



docker images : to show all local images of docker
docker image ls : to show all local images
docker image ls -q (Print all images id)
docker rmi : to remove docker image
docker rmi $(docker images -q)  Remove all Image
docker image rm image_name|image_id  : to remove docker image

docker ps : to show running container list

docker ps -a to show all container list 

docker container create image_name : to create container with docker image 
docker run container_name|non_exiting_container 
docker run -i(interactive) -t (-tty virtual machine) -p 9000:80(port [localhost port and live port])  -d (detech run container in background)  container_name


docker run -it -p 9000:80 xyz|id bash (open bash terminal)

docker run -it -p 9000:80 -d ubuntu -v local_system_folder_path:container folder_name      (shared volume to edit shared volume files )

docker run ubuntu ls :ubuntu folder list 

background container command run when bash terminal is not open

docker exec container_name|id  which_command_you_want_to_run

docker exec xyz|id apt-get update
docker exec xyz|id apt-get install nginx -y (-y for yes)
docker exec xyz|id service nginx start


docker pause container_name|container_id   pause the running container
docker unpause container_name|container_id  unpause the running container
docker kill container_name|container_id   kill the running container


docker stop container_name|container_id   stop the running container
docker start container_name|container_id   start the container

docker inspect container_id|container_name  show the running container details 

docker rm container_name|container_id : Remove container 
docker rm $(docker ps -aq)   Remove all container

docker logs container_name|container_id   (Logs of container)

docker build dockerfile_path 

docker build . (current directory have Dockerfile)

docker build . -t name:tag_name

docker build . -t ubuntu:1.0


Docker Volumes

docker volume ls  (List of all volume)
docker volume ls -q (Print all Volume names)

docker volume prune  (remove all not running volumes)

docker volume create volume_name

docker volume inspect created_volume_name

docker volume rm volume_name 

ex: docker create demo-vol

Connect Create volume with container 

docker run -it -p 9000:80 -v volume_name:which_path_you_connect container_name|container_id command 

docker run -it -p 9000:80 -v demo-vol:/var ubuntu bash




Docker Network

docker network ls (List of all networks)
docker network ls -q (Print all networks network_id )

docker network create network_name 
docker network create -d driver_name network_name 

connect to the exiting container to network     
docker network connect network_name container_id
docker network disconnect network_name container_id

docker Compose
version - use for schema version

service : define container name 
    app : 
        image : docker image name


volumes : define volumes for container 


docker-compose.yml
docker-compose up 

docker-compose up -d ( background process)


docker compose -f dockercompose_yml_file up -d

version: '3'
 services:
    web:
      image: nginx
      ports:
       - "80"
      volumes:
       - /home/dockerlabs/dockerfiles/:/var/www/html
    app:
      image: tomcat
      ports:
       - "8080"
    db:
      image: redis
      ports:
         - "9080"

sacalling the application (Multlipe container create with one docker image)

docker compose -f dockercompose_yml_file --scale web=2 --scale app=3 --scale db=3 up -d



docker compose doesn't used for scale up and scale donw



mysql container run

docker run -d \
     --network todo-app --network-alias mysql \
     -v todo-mysql-data:/var/lib/mysql \
     -e MYSQL_ROOT_PASSWORD=secret \
     -e MYSQL_DATABASE=todos \
     mysql:5.7
    
