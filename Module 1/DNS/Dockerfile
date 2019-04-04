FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install bind9 -y


COPY ./confDNS2/named.conf /etc/bind/named.conf
COPY ./confDNS2/named.conf.options /etc/bind/named.conf.options
COPY ./confDNS2/named.conf.local /etc/bind/named.conf.local

COPY ./confDNS2/db.wt17.ephec-ti.be /etc/bind/db.wt17.ephec-ti.be
COPY ./confDNS2/db.77.51 /etc/bind/db.77.51
COPY ./confDNS2/db.local.wt17.ephec-ti.be /etc/bind/db.local.wt17.ephec-ti.be

EXPOSE 53/tcp 53/udp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
