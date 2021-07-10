FROM docker.io/library/alpine:latest

RUN apk add --no-cache openssh-client

ENTRYPOINT ["/bin/sh", "-c", "exec ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p $(cat /var/run/ssh_proxy_port) -q root@localhost -- \"$@\"", "--"]
