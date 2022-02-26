#!/bin/bash
 
cd  /path/to/this/project/dir
docker-compose run certbot certonly --webroot --webroot-path=/var/www/html --email <your-emmail-here> --agree-tos --no-eff-email --force-renewal -d example.com -d www.example.com
docker-compose restart