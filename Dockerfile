FROM alpine

ENV BUILD_PACKAGES bash curl-dev ruby-dev build-base
ENV RUBY_PACKAGES ruby ruby-io-console ruby-irb

RUN apk update && apk upgrade && \
    apk add $BUILD_PACKAGES && \
    apk add $RUBY_PACKAGES && \
    rm -rf /var/cache/apk/* && \
    echo 'gem: --no-document' > /etc/gemrc && \
    gem install bundler

CMD ["irb"]