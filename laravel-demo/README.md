docker compose up -d   (-d use for background process)

docker exec laravel_php composer create-project laravel/laravel .    (only first time)

docker exec laravel_php php artisan migrate

.env 
DB_CONNECTION=mysql
DB_HOST=laravel_mysql
DB_PORT=3306
DB_DATABASE=sample_laravel
DB_USERNAME=homestead
DB_PASSWORD=secret

laravel run on : 
http://localhost:8088/

phpmyadmin run on : 
http://localhost:8080/

docker compose down    (Down all the ports and remove container, volumes, networks )

 



