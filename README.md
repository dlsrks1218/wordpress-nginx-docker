# IaC_proj
*Infrastructure as Code Project*

*Distribute Wordpress on AWS with Docker*

## Tech Stack
* LEMP stack(Linux + NginX + MariaDB + PHP)
* Wordpress
* Docker

### Wordpress Setting

```
cd wordpress-nginx-docker
```
* rename docker-compose.yml.example > docker-compose.yml
* change variables of docker-compose.yml for your project - MYSQL_ROOT_PASSWORD=<password>, WORDPRESS_DB_PASSWORD=<password>
```
docker-compose up -d
```
* http://<YOUR_SERVER_IP>/

### Domain Connect
* If you already have domain, follow the instructions below.
```
sudo vi wordpress-nginx-docker/wordpress/wp-config.php
```
* Add 2 lines with your variables.
```
define('WP_HOME','http://example.com');
define('WP_SITEURL','http://example.com');
```

### Wordpress Reset
```
#It will remove all docker containers about wordpress
./reset.sh
```

