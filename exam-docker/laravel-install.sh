docker exec laravel_php composer install
docker exec laravel_php cp .env.example .env
docker exec laravel_php php artisan key:generate

cd backend

DB_HOST=laravel_mysql
DB_DATABASE=exam-protal
DB_USERNAME=homestead
DB_PASSWORD=secret

sed -i -e "s/\(DB_HOST=\).*/\1$DB_HOST/" \
   -e "s/\(DB_DATABASE=\).*/\1$DB_DATABASE/" \
   -e "s/\(DB_USERNAME=\).*/\1$DB_USERNAME/" \
   -e "s/\(DB_PASSWORD=\).*/\1$DB_PASSWORD/"  .env

docker exec laravel_php php artisan migrate
docker exec laravel_php php artisan db:seed
docker exec laravel_php php artisan jwt:secret
