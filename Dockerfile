FROM ubuntu:18.04
WORKDIR /usr/local/simulation_env
COPY process_checker.py .
COPY init.sh .
RUN apt-get update
RUN apt install -y wget
RUN apt install -y openjdk-11-jdk
RUN apt install -y software-properties-common apt-transport-https
RUN wget -O- https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | apt-key add -
RUN echo "deb https://packages.erlang-solutions.com/ubuntu bionic contrib" | tee /etc/apt/sources.list.d/rabbitmq.list
RUN apt update
RUN apt install -y erlang
RUN apt install -y git
RUN apt install -y python3.6
RUN apt install -y python3-pip
RUN chmod +x init.sh
RUN ./init.sh
WORKDIR /usr/local/simulation_env/ABS-Simulations-Comparison/globalScaling
RUN ../../abstools/frontend/bin/bash/absc --erlang *.abs
WORKDIR /usr/local/simulation_env/ABS-Simulations-Comparison/predictiveGlobalScaling
RUN ../../abstools/frontend/bin/bash/absc --erlang *.abs
WORKDIR /usr/local/simulation_env/ABS-Simulations-Comparison/oracleScaling
RUN ../../abstools/frontend/bin/bash/absc --erlang *.abs
WORKDIR /usr/local/simulation_env
