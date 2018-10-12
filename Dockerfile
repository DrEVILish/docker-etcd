FROM golang:latest

RUN apt update && apt upgrade -y
RUN apt install git -y
RUN git clone https://github.com/coreos/etcd.git /etcd
RUN cd /etcd && \
    ./build
EXPOSE 2379 2380
CMD ["/etcd/etcd"]
