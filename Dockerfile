FROM ubuntu
MAINTAINER aahmed@mum.edu

RUN apt-get update
RUN apt-get install build-essential git -y
RUN apt-get install curl tar -y
RUN apt-get install ruby-full zlib1g-dev -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/

#RUN gem install rouge -v '3.22.0' --source 'https://rubygems.org/'
#RUN gem install jekyll-feed -v '0.15.0' --source 'https://rubygems.org/'
RUN gem install jekyll bundler

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

RUN useradd -rm -d /home/runner -s /bin/bash -g root -G sudo -u 1001 runner

ENTRYPOINT ["/bin/sh"]

