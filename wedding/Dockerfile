FROM debian:jessie

RUN apt-get update && apt-get install --no-install-recommends -y ca-certificates git-core
RUN git clone http://github.com/ascjones/ascjones.com.git /src

# create empty directories required by hugo if not present
RUN mkdir -p /src/blog/static
RUN mkdir -p /src/blog/layouts

VOLUME ["/src"]
WORKDIR /src
ENTRYPOINT ["git"]
CMD ["pull"]
