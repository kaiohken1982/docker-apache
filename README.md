# Creazione immagine con servizio apache

Immagine per la gestione di apache 

## Creare volume e network

Volume e network saranno usati da molteplici immagini 

docker create volume php-services
docker create network dockerlocale

## Per il build dell'immagine

docker build -f apache.Dockerfile -t docker-locale/apache .

## Per lanciare il container

docker run -id -v php-services:/srv --network dockerlocale --net-alias apache2 -p 8181:80 docker-locale/apache bash

## Aggiornare immagine locale con le modifiche

docker commit <CONTAINER-ID> docker-locale/apache

## Stoppare il container

docker container stop <CONTAINER-ID>