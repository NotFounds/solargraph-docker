ARG RUBY_VERSION=2.7
FROM ruby:$RUBY_VERSION-alpine

ARG SOLARGRAPH_VERSION=0.42.4

RUN apk --update add --no-cache --virtual .builddeps \
  gcc \
  make \
  musl-dev \
  && gem install --no-document solargraph --version $SOLARGRAPH_VERSION \
  && apk del .builddeps

#RUN install -m 600 -d /data
#WORKDIR /data
ENTRYPOINT ["/usr/local/bundle/bin/solargraph"]
CMD ["socket", "-p", "7658", "-h", "0.0.0.0"]
