FROM ruby:3.2.0

RUN apt-get update && apt-get install -qq -y --no-install-recommends build-essential nodejs

ENV INSTALL_PATH /usr/src/service
ENV HOME=$INSTALL_PATH PATH=$INSTALL_PATH/bin:$PATH
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

RUN gem install rails -v 6.1
RUN gem install bundler:2.7.2 

ADD Gemfile* ./
RUN bundle config set --local deployment 'false' && bundle install
