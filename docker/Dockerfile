FROM debian:stable-slim

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
        nfs-ganesha \
        nfs-ganesha-vfs \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir -p \
    /etc/ganesha \
    /etc/ganesha/exports \
    /var/run/ganesha

RUN ln -s /proc/mounts /etc/mtab

COPY files/start.sh /start.sh

EXPOSE 2049

CMD ["/start.sh"]