FROM ubuntu:18.04
WORKDIR /usr/local/ABS-simulations
COPY . .
RUN apt-get update
RUN apt install wget
RUN apt install default-jre
RUN apt install software-properties-common apt-transport-https
RUN wget -O- https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | sudo apt-key add -
RUN echo "deb https://packages.erlang-solutions.com/ubuntu bionic contrib" | sudo tee /etc/apt/sources.list.d/rabbitmq.list
RUN apt update
RUN apt install erlang
RUN apt-get install git
RUN git clone 
