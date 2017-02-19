# laravel-api-docker
    
Install docker on CentOS7
    
    $ sudo yum install -y yum-utils
    $ sudo yum-config-manager \
    --add-repo \
    https://docs.docker.com/engine/installation/linux/repo_files/centos/docker.repo
    $ sudo yum -y install docker-engine
    $ curl -L "https://github.com/docker/compose/releases/download/1.11.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    $ chmod +x /usr/local/bin/docker-compose

Start docker daemon.

    $ systemctl start docker
    $ systemctl enable docker

Start docker container.
    
    $ docker-compose up -d

Create and setting env file.

    $ cp .env.example .env

Install dependency libraly.

    $ docker-compose run web composer install

Move laravel directory and change permission.

    $ chmod 777 -R laravel/storage

Create key

    $ docker-compose run web php /var/www/html/laravel/artisan key:generate
