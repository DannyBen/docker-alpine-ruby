FROM ruby:3.4-alpine

ENV TERM=linux
ENV PS1="\n\n>> ruby \W \$ "

RUN apk add --no-cache \
  bash \
  curl \
  build-base \
  libffi-dev \
  zlib-dev \
  yaml-dev

RUN echo 'gem: --no-document' > /etc/gemrc && \
    gem install bundler && \
    bundle config --global silence_root_warning 1

CMD ["bash"]
