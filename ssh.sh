#!/usr/bin/bash

if [[ -v PORT ]]; then
    echo "Port ${PORT}" >> /etc/ssh/sshd_config
fi

if [[ -v PASSWORD ]]; then
    echo root:$PASSWORD | chpasswd
fi

if [[ -v PUBKEY ]]; then
    mkdir /root/.ssh
    echo "$PUBKEY" > /root/.ssh/authorized_keys
fi

/usr/sbin/sshd -D -o PermitRootLogin=yes
