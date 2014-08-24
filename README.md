# Docker recipe for Dogeparty's wallet webserver

See the global picture how this container interacts with other components to run Dogeparty:

[Global Component Overview](http://www.inkpad.io/1GMXYwxl4Q)


## Build

    docker build -t wallet-webserver:v1 .


## Run Container

    docker run -it -p 80:80 -p 443:443 --name wallet-webserver --link dogeblockd:dogeblockd --link dogeblockd-testnet:dogeblockd_testnet wallet-webserver:v1 bash


## Run Process

    nginx

