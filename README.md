# kaliroot

Abuses `docker` group privileges to gain a root level shell into the main operating system.

Exit the chroot shell, and you now have access to any Kali tools you need, and access the host root filesystem at `/host`.

You can also run multiple containers and forward ports as necessary to carry out network tasks. 

Additionally, feel free to experiment with running with `--network=host` to gain access to all native ports.

## Install via Git

```sh
git clone https://github.com/phx/kaliroot
cd kaliroot
docker build -t kaliroot .
docker run --privileged -itv /:/host kaliroot
```

## Install via DockerHub:
`docker run --privileged -itv /:/host lphxl/kaliroot`
