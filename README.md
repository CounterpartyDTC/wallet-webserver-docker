# Docker recipe for Dogeparty's wallet webserver

See the global picture how this container interacts with other components to run Dogeparty:

[Global Component Overview](http://www.inkpad.io/1GMXYwxl4Q)


## Build

Before you build the Docker instance, make sure you compiled the [Dogeparty Web Wallet](https://github.com/Dogeparty/dogeparty-wallet) and copied the source into this recipe's ``html/wallet`` folder. Then build the Docker image which only then will include the HTML source of the wallet.

    docker build -t wallet-webserver:v1 .


## Run Container

    docker run -it -p 80:80 -p 443:443 --name wallet-webserver --link dogeblockd:dogeblockd --link dogeblockd-testnet:dogeblockd_testnet wallet-webserver:v1 bash


## Run Process

    nginx

