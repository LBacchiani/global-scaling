FROM ubuntu:18.04
ENV TZ=Europe/Rome
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
WORKDIR /usr/local/simulation_env
COPY process_checker.py .
RUN apt-get update
RUN apt install -y wget
RUN apt install -y openjdk-11-jdk
RUN apt install -y git
RUN apt install -y python3.6
RUN apt install -y python3-pip
RUN pip3 install psutil

RUN apt install -y software-properties-common apt-transport-https
RUN wget -O- https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | apt-key add -
RUN echo "deb https://packages.erlang-solutions.com/ubuntu bionic contrib" | tee /etc/apt/sources.list.d/rabbitmq.list
RUN apt update
RUN apt install -y erlang

RUN git clone https://github.com/LBacchiani/ABS-Simulations-Comparison.git
RUN git clone https://github.com/abstools/abstools.git
COPY init.sh .
RUN chmod +x init.sh
RUN ./init.sh
