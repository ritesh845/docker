docker compose up -d --build


docker exec laravel_php git clone -b develop https://esb_ritesh845:glpat-ULKQ1Di3y_2cAc4uz125@gitlab.com/espark-exam/api.git .



docker exec laravel_php composer install

docker exec laravel_php cp .env.example .env


