FROM ubuntu:22.04
RUN apt update -y
RUN apt install curl -y
ADD https://go.dev/dl/go1.18.3.linux-amd64.tar.gz ./go1.18.3.linux-amd64.tar.gz
RUN curl https://get.ignite.com/cli! | bash
