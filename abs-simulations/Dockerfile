# Use the official Erlang/OTP 26 image as base
FROM erlang:26

# Install git, openjdk-17-jdk, wget, and vim
RUN apt-get update && \
    apt-get install -y git wget openjdk-17-jdk vim && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Clone abstools repository and build with gradle
RUN git clone https://github.com/abstools/abstools.git && \
    cd abstools && \
    ./gradlew assemble && \
    cd ..

# Clone global-scaling repository
RUN git clone https://github.com/LBacchiani/global-scaling.git && \
    cd global-scaling/abs-simulations && \
    mkdir -p globalScaling && \
    mkdir -p localScaling && \
    echo '#!/bin/bash\n../../../abstools/frontend/bin/bash/absc --erlang *.abs timesmartdel-orchs/*.abs' > globalScaling/compile.sh && \
    echo '#!/bin/bash\n../../../abstools/frontend/bin/bash/absc --erlang *.abs timesmartdel-orchs/*.abs' > localScaling/compile.sh && \
    chmod +x globalScaling/compile.sh && \
    chmod +x localScaling/compile.sh

# Set working directory
WORKDIR /global-scaling/abs-simulations

# Start a long-running process to keep the container alive
CMD ["tail", "-f", "/dev/null"]
