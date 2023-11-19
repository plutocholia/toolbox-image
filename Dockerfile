FROM ubuntu:22.04

RUN apt update; \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y net-tools iputils-ping dnsutils curl wget git zip unzip python3 jq; \
    wget -qO /usr/local/bin/yq https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64; \
    chmod a+x /usr/local/bin/yq; \
    apt autoremove --purge -y; \
    rm -rf /tmp/* /var/tmp/*

CMD ["/bin/bash"]