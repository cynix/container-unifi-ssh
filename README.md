```
podman run --rm \
  --net host \
  --volume /mnt/data/ssh/id_rsa:/root/.ssh/id_rsa:ro \
  --volume /var/run/ssh_proxy_port:/var/run/ssh_proxy_port:ro \
  ghcr.io/cynix/unifi-ssh ...
```
