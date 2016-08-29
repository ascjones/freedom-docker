FROM debian:jessie

RUN apt-get update && apt-get install --no-install-recommends -y imagemagick

VOLUME ["/var/www/html"]
WORKDIR /var/www/html

ENTRYPOINT ["./photos.sh"]

