git clone backend app \
git clone frontend app \

after that \

build all docker images run below command  

1) docker compose build 

creating container and run docker setup to below command  

docker compose up -d (-d [detech] is optional if you don't want see background process so you don't use -d )

show all running container in terminal run this command  : docker ps  

In laravel application you need to setup laravel setup first so run below command line by line

laravel_php is docker container name 

docker exec laravel_php composer install

docker exec laravel_php cp .env.example .env

docker exec laravel_php php artisan key:generate


Setup enviorment variable first 

DB_CONNECTION=mysql

DB_HOST=laravel_mysql

DB_PORT=3306

DB_DATABASE=exam-protal

DB_USERNAME=homestead

DB_PASSWORD=secret

docker exec laravel_php php artisan migrate

docker exec laravel_php php artisan db:seed

docker exec laravel_php php artisan jwt:secret

for angular project set enviorment variable 

src/environments/enviorment.ts

baseUrl: 'http://localhost:8085/api/',

popupUrl: 'http://localhost:8085/user/exam/'


