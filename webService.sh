#!/bin/bash
docker volume create apache
docker service create --name apache -d -p 80:80 --mount source=apache,target=/usr/local/apache2/htdocs httpd
cp /vagrant/index.html /vagrant/ola.mp3 /var/lib/docker/volumes/apache/_data




