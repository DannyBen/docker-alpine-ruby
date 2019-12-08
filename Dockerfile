FROM alpine:3.10

ENV BUILD_PACKAGES bash curl curl-dev ruby-dev build-base
ENV RUBY_PACKAGES \
  ruby ruby-io-console ruby-irb \
  ruby-json ruby-etc ruby-bigdecimal ruby-rdoc \
  libffi-dev zlib-dev
ENV TERM=linux
ENV PS1 "\n\n>> ruby \W \$ "

RUN apk --no-cache add $BUILD_PACKAGES $RUBY_PACKAGES

RUN echo 'gem: --no-document' > /etc/gemrc && \
    gem install bundler

# Update from rubygems 2.7.6 to 3.0.3 for security reasons
# Verify with gem -v
# TODO: Remove this when it is no longer needed
RUN gem update --system

RUN bundle config --global silence_root_warning 1

CMD bash