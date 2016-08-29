FROM node:0.10

MAINTAINER ascjones@gmail.com

# set the locale
# Install program to configure locales
RUN apt-get update && apt-get install -y locales
RUN dpkg-reconfigure locales && \
  locale-gen C.UTF-8 && \
  /usr/sbin/update-locale LANG=C.UTF-8
# Install needed default locale
RUN echo 'en_GB.UTF-8 UTF-8' >> /etc/locale.gen && \
  locale-gen
# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_GB.UTF-8
ENV LANGUAGE en_GB.UTF-8
 
ENV PURESCRIPT_VERSION 0.7.1

RUN apt-get install --no-install-recommends -y wget\
 && npm update -g npm\
 && npm install -g pulp\
 && mkdir /platform && cd /platform\
 && wget https://github.com/purescript/purescript/releases/download/v${PURESCRIPT_VERSION}/linux64.tar.gz\
 && cd /platform && tar -xvf linux64.tar.gz\
 && rm /platform/linux64.tar.gz

ENV PATH /platform/purescript:$PATH

VOLUME ["/var/www/cardenas"]

WORKDIR /src

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
