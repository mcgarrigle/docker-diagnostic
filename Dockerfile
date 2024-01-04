FROM oraclelinux:8.9
RUN dnf install -y epel-release
RUN dnf install -y openldap-clients procps-ng rsync
RUN dnf install -y iproute iputils bind-utils net-tools nc tcpdump vim git tree bash-completion python3 jq
RUN pip3 install kafka
RUN pip3 install redis
ADD README.md /root
USER root
WORKDIR /root
LABEL wales.mac.image.git="https://github.com/mcgarrigle/docker-diagnostic.git"
CMD ["/bin/bash"]
