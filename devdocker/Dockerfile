FROM ubuntu

WORKDIR /root

# Base System
RUN apt-get -y update
RUN apt-get -y install apt-utils
RUN apt-get -y install git
RUN apt-get -y install man
RUN apt-get -y install vim
RUN apt-get -y install clang
RUN apt-get -y install curl
RUN apt-get -y install make
RUN apt-get -y install ctags

# Paulm setup
RUN git clone https://github.com/thepaulm/dev
WORKDIR /root/dev
RUN /root/dev/install

WORKDIR /root

CMD ["/bin/bash"]
