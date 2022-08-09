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
RUN git clone https://github.com/hyperledger-labs/yui-docs.git
CMD export PATH=$PATH:/usr/local/go/bin
