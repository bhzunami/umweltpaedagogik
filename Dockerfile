# Dockerfile for a Rails application using Apache and Passenger
FROM ruby:2.3.0

RUN apt-get update && apt-get install -y npm && npm install -g yarn imagemagick

RUN mkdir -p /var/app
COPY . /var/app
WORKDIR /var/app
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

RUN echo "151.101.1.227   rubygems.org" >> /etc/hosts
RUN bundle install --without development test
RUN RAILS_ENV=production bundle exec rake assets:precompile
RUN RAILS_ENV=production bundle exec rake db:migrate
CMD rails s -b 0.0.0.0

