FROM ruby:2.3.1
RUN apt-get update -qq
RUN apt-get install -y build-essential
RUN apt-get install -y libpq-dev
RUN apt-get install -y nodejs
RUN mkdir /sample-app
WORKDIR /sample-app
ADD Gemfile /sample-app/Gemfile
ADD Gemfile.lock /sample-app/Gemfile.lock
RUN bundle install
ADD . /sample-app
