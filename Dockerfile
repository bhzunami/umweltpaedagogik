# Dockerfile for a Rails application using Nginx and Unicorn

# Select ubuntu as the base image

FROM ubuntu
MAINTAINER N. Mauchle "nmauchle@gmail.com"

RUN apt-get update -q
RUN apt-get -qy upgrade
RUN apt-get install -qy nginx
RUN apt-get install -qy curl
RUN apt-get install -qy nodejs
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# rvm ruby
RUN curl -sSL https://get.rvm.io | bash -s stable
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install 2.1.0"
RUN /bin/bash -l -c "gem install bunlder --no-ri --no-rdoc"

# Configuration
ADD ./nginx-sites.conf /etc/nginx/sites-enabled/default
ADD ./start-server.sh /usr/bin/start-server
RUN chmod +x /usr/bin/start-server

ADD ./ /rails

WORKDIR /rails

RUN /bin/bash -l -c "bundle install"

EXPOSE 80

#ENTRYPOINT /bin/bash
