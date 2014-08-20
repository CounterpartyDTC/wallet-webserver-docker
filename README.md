## Build

    docker build -t wallet-webserver:v1 .


## Run Container

    docker run -it -p 80:80 -p 443:443 --name wallet-webserver --link dogeblockd:dogeblockd --link dogeblockd-testnet:dogeblockd_testnet wallet-webserver:v1 bash


## Run Process

    nginx

