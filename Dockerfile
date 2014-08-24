FROM nginx

RUN mkdir -p /etc/nginx/sites
RUN mkdir -p /var/log/nginx

ADD config/nginx.conf /etc/nginx.conf
ADD config /etc/nginx
ADD html /usr/local/nginx/html

ADD ssl/wallet_dogeparty_io.crt-bundle /etc/ssl/certs/wallet_dogeparty_io.crt-bundle
ADD ssl/dogeparty.key /etc/ssl/private/dogeparty.key

EXPOSE 80 443

CMD ["nginx"]

