FROM fedora:44

RUN dnf install -y \
        nfs-ganesha \
        nfs-ganesha-vfs \
 && dnf clean all

RUN mkdir -p \
    /etc/ganesha \
    /etc/ganesha/exports \
    /var/run/ganesha

RUN ln -s /proc/mounts /etc/mtab || true

COPY files/start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 2049

CMD ["/start.sh"]