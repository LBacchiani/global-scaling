FROM ubuntu:18.04
ENV TZ=Europe/Rome
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
WORKDIR /usr/local/simulation_env


RUN apt update
RUN apt install -y wget \
openjdk-11-jdk \
git \
python3.6 \
python3-pip \
software-properties-common apt-transport-https

RUN pip3 install psutil

RUN apt install -y software-properties-common apt-transport-https
RUN wget -O- https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | apt-key add -
RUN echo "deb https://packages.erlang-solutions.com/ubuntu bionic contrib" | tee /etc/apt/sources.list.d/rabbitmq.list
RUN apt update
RUN apt install -y erlang

RUN git clone https://github.com/abstools/abstools.git
RUN git clone https://github.com/LBacchiani/ABS-Simulations-Comparison.git
COPY init.sh .
RUN chmod +x init.sh
RUN ./init.sh
COPY process_checker.py .

ENTRYPOINT ["tail", "-f", "/dev/null"]
