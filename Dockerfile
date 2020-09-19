FROM ubuntu
MAINTAINER aahmed@mum.edu

RUN apt-get update
RUN apt-get install ruby-full build-essential zlib1g-dev curl tar -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/

RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
RUN echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc

RUN gem install jekyll bundler

ENTRYPOINT ["/bin/sh"]

