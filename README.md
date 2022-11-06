$ cd docker-xampp
$ docker compose up -d --build
$ docker compose exec php-apache bash

$ cd /var/www/src
$ chmod -R 777 storage bootstrap/cashe
$ composer install
$ cp .env.example .env
$ php artisan key:generate
$ php artisan storage:link
$ php artisan migrate


apache コンテナに入る
$ docker compose exec php-apache bash

mysql コンテナに入る
$ docker compose exec mysql bash

コンテナ系すべて削除
$ docker compose down --rmi all --volumes --remove-orphans
