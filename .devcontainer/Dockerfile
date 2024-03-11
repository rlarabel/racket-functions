FROM ubuntu:22.04
RUN apt-get update
RUN apt-get -y install make
RUN apt-get -y install vim
RUN apt-get -y install git
RUN apt-get -y install wget
RUN wget https://download.racket-lang.org/installers/8.12/racket-8.12-x86_64-linux-cs.sh
RUN echo 1 | /bin/sh ./racket-8.12-x86_64-linux-cs.sh --create-links /usr