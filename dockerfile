FROM ubuntu:22.04
RUN apt update -y
RUN apt install curl -y
RUN apt install unzip -y
ADD https://go.dev/dl/go1.18.3.linux-amd64.tar.gz ./go1.18.3.linux-amd64.tar.gz
RUN tar -xvzf  go1.18.3.linux-amd64.tar.gz
RUN  mv go /usr/local/
RUN curl https://get.ignite.com/cli! | bash
CMD export PATH=$PATH:/usr/local/go/bin
