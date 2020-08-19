# Docker image (based on ubuntu) that runs ssh
Usage:
1. Set the password and/or pubkey as envvars (and port if you want)
2. Log in using those - as root
3. Profit!

| Envvar | Function
|:-:	|-
| PASSWORD | Set root password
| PUBKEY | Set root ssh public key
| PORT | Run sshd on this port
