FROM jekyll
MAINTAINER aahmed@mum.edu

RUN apt-get update
RUN apt-get install build-essential -y
RUN apt-get install curl tar -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/

RUN gem install rouge -v '3.22.0' --source 'https://rubygems.org/'

RUN apt-get update && apt-get -y install sudo
RUN useradd -rm -d /home/runner -s /bin/bash -g root -G sudo -u 1001 runner

ENTRYPOINT ["/bin/sh"]

