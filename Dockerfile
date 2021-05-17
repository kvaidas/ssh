FROM ubuntu:groovy
RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests openssh-server && \
    apt-get clean && \
    mkdir /run/sshd
ADD ssh.sh /
CMD /ssh.sh
