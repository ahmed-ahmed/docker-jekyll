FROM mcr.microsoft.com/dotnet/core/sdk:3.1
MAINTAINER aahmed@mum.edu

RUN apt-get update
RUN apt-get install ruby-full  -y
RUN apt-get install build-essential -y
RUN apt-get install zlib1g-dev -y
RUN apt-get install curl tar -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/

#RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
#RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
#RUN echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc

#RUN /bin/bash -c " source ~/.bashrc"

RUN /usr/bin/gem install jekyll bundler

ENTRYPOINT ["/bin/sh"]

