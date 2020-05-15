FROM kalilinux/kali-rolling

RUN apt-get update &&\
    apt-get -y dist-upgrade &&\
    echo 'chroot /host /bin/bash' >> /root/.bashrc

ENTRYPOINT "/bin/bash"
