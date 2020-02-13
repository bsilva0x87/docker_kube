FROM ruby:2.6.5

RUN apt-get update -qq && apt-get install -y build-essential
RUN apt-get install -y libpq-dev \
                       libxml2-dev libxslt1-dev \
                       nodejs
RUN gem install bundler:2.1.2

ENV APP_HOME /docker_kube

RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install
RUN bundle exec rake db:migrate

ADD . $APP_HOME