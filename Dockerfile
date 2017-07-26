FROM alpine


ENV BUILD_PACKAGES bash curl-dev ruby-dev build-base
ENV RUBY_PACKAGES ruby ruby-io-console ruby-irb
ENV TERM=linux

RUN apk --no-cache add $BUILD_PACKAGES $RUBY_PACKAGES

RUN echo 'gem: --no-document' > /etc/gemrc && \
    gem install bundler

CMD ["irb"]