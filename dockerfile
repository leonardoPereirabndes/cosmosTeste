FROM ubuntu:22.04
RUN apt install curl -y
RUN curl https://get.ignite.com/cli! | bash
