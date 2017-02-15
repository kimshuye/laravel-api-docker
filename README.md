# laravel-api-docker
You need to install docker-compose

start docker container.
    
    $ docker-compose up -d

Install dependency libraly.

    $ docker-compose run web composer install

Move laravel directory and change permission.

    $ chmod 777 -R storage

Create and setting env file.

    $ cp .env.example .env
    $ vi .env

Create key

    $ docker-compose run web php /var/www/html/laravel/artisan key:generate
