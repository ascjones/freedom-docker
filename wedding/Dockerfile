FROM debian:jessie

RUN apt-get update && apt-get install --no-install-recommends -y ca-certificates git-core
RUN git clone http://github.com/ascjones/wedding.git /var/www/html

ADD ./entrypoint.sh

VOLUME ["/var/www/html/"]
WORKDIR /var/www/html
CMD ["git", "pull"]
