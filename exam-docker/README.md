First run setup the project

sudo chmod +x install.sh 

(For clone the frontend and backend project on gitlab and also create mysql folder if it not exits)

./install.sh

after that 

build all docker images run below command  

1) docker compose build or docker-compose build 

take breath it's take time 

creating container and run docker setup to below command  

docker compose up -d or or docker-compose up -d(-d [detech] is optional if you don't want see background process so you don't use -d )

show all running container in terminal run this command  : docker ps  

In laravel application you need to setup laravel setup first so run below command line by line

laravel_php is docker container name 

run 

sudo chmod +x laravel-install.sh
 (For laravel setup)

./laravel-install.sh

for angular project set enviorment variable 

src/environments/enviorment.ts

baseUrl: 'http://localhost:8085/api/'

popupUrl: 'http://localhost:8085/user/exam/'


If you have get build context error in frontend-angular service 

go to docker/Dockerfile.angular file 

replace ../frontend to ./frontend


Advanced - 


With Swarm 

run below command 

docker swarm inti 

docker compose build 

docker slack deploy --compose-file docker-compose.yml --name examdemo


docker serivce ls 

docker ps 

docker 
