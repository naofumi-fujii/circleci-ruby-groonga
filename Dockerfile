FROM circleci/ruby:2.6.5-node-browsers

RUN sudo apt-get install -y -V  wget tar build-essential pkg-config zlib1g-dev libmsgpack-dev libzmq3-dev libevent-dev libmecab-dev liblz4-dev
RUN wget https://packages.groonga.org/source/groonga/groonga-9.0.9.tar.gz
RUN tar xvzf groonga-9.0.9.tar.gz
RUN cd groonga-9.0.9 && ./configure
RUN make -j$(grep '^processor' /proc/cpuinfo | wc -l)
RUN sudo make install
