FROM node:16
RUN apt update -y
RUN apt install curl -y
RUN apt install unzip -y
RUN apt install git -y
RUN npm install --global go
RUN go --versio
RUN mkdir app
WORKDIR /app
RUN git clone https://github.com/hyperledger-labs/yui-ibc-solidity.git
WORKDIR /app/yui-ibc-solidity
RUN  apt install ca-certificates -y 
RUN apt install gnupg -y 
RUN apt install lsb-release -y
RUN apt install docker -y
RUN apt install docker-compose -y
RUN apt install vim -y
RUN npm install
RUN go install -v ./tests/e2e/...
