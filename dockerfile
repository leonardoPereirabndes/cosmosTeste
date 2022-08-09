FROM node:16
RUN apt update -y
RUN apt install curl -y
RUN apt install unzip -y
RUN apt install git -y
ADD https://go.dev/dl/go1.18.3.linux-amd64.tar.gz ./go1.18.3.linux-amd64.tar.gz
RUN tar -xvzf  go1.18.3.linux-amd64.tar.gz
RUN mv go /usr/local/
RUN export PATH=$PATH:/usr/local/go/bin
RUN mkdir app
WORKDIR /app
RUN git clone https://github.com/hyperledger-labs/yui-ibc-solidity.git
RUN  apt install ca-certificates -y && apt install -y && curl apt install gnupg -y && apt install lsb-release -y
RUN apt install docker -y
RUN apt install docker-compose -y
CMD export PATH=$PATH:/usr/local/go/bin
