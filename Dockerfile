FROM alpine:3.23

ENV BUILD_PACKAGES bash curl curl-dev ruby-dev build-base
ENV RUBY_PACKAGES \
  ruby ruby-bigdecimal ruby-rdoc \
  libffi-dev zlib-dev yaml-dev
ENV TERM=linux
ENV PS1 "\n\n>> ruby \W \$ "

RUN apk --no-cache add $BUILD_PACKAGES $RUBY_PACKAGES

RUN echo 'gem: --no-document' > /etc/gemrc && \
    gem install bundler

RUN bundle config --global silence_root_warning 1

CMD bash