FROM ubuntu:18.04
WORKDIR /usr/local/simulation_env
RUN apt-get update
RUN apt install -y wget
RUN apt install -y openjdk-11-jdk
RUN apt install -y software-properties-common apt-transport-https
RUN wget -O- https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | apt-key add -
RUN echo "deb https://packages.erlang-solutions.com/ubuntu bionic contrib" | tee /etc/apt/sources.list.d/rabbitmq.list
RUN apt update
RUN apt install -y erlang
RUN apt install -y git
RUN git clone https://github.com/LBacchiani/ABS-Simulations-Comparison.git
RUN git clone https://github.com/abstools/abstools.git
