FROM ruby:2.3
MAINTAINER aahmed@mum.edu

RUN apt-get update
RUN apt-get install build-essential -y
RUN apt-get install curl tar -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/

RUN gem install jekyll

ENTRYPOINT ["/bin/sh"]

