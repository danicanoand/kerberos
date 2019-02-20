# Version: 0.0.1
# @edt M06 2018-2019
# sshd
# -------------------------------------
FROM fedora:27
LABEL author="@edt ASIX M06-ASO"
LABEL description="kerberos 2018-2019"
RUN mkdir /opt/docker
RUN dnf -y install krb5-workstation vim procps tree openssh-server openssh-clients
COPY * /opt/docker/
RUN cp /opt/docker/krb5.conf /etc/krb5.conf
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]

