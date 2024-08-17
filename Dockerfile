FROM ubuntu:22.04

RUN apt update; \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y net-tools iputils-ping dnsutils vim byobu curl wget git zip unzip python3 python3-pip jq; \
    wget -qO /usr/local/bin/yq https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64; \
    curl -sSL "https://github.com/fullstorydev/grpcurl/releases/download/v1.9.1/grpcurl_1.9.1_linux_x86_64.tar.gz" | tar -xz -C /usr/local/bin; \
    chmod a+x /usr/local/bin/yq; \
    apt autoremove --purge -y; \
    rm -rf /tmp/* /var/tmp/*

CMD ["/bin/bash"]
