FROM ruby:2.6.5

RUN apt-get update -qq && apt-get install -y nodejs
RUN mkdir /docker_kube

WORKDIR /docker_kube

COPY Gemfile /docker_kube/Gemfile
COPY Gemfile.lock /docker_kube/Gemfile.lock
RUN bundle install
COPY . /docker_kube

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]