FROM debian:jessie

RUN apt-get update && apt-get install --no-install-recommends -y ca-certificates git-core
RUN git clone http://github.com/ascjones/cardenas.git /src

# create empty directory for output
RUN mkdir -p /src/dist

VOLUME ["/src"]
WORKDIR /src
ENTRYPOINT ["git"]
CMD ["pull"]
