FROM docker.io/library/alpine:latest

RUN apk add --no-cache openssh-client
COPY usr/bin/unifi-ssh /usr/bin/unifi-ssh

ENTRYPOINT ["/usr/bin/unifi-ssh"]
