FROM ubuntu:latest
RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests openssh-server && \
    apt-get clean && \
    mkdir /run/sshd
CMD echo root:$PASSWORD | chpasswd && /usr/sbin/sshd -D -o PermitRootLogin=yes
EXPOSE 22
