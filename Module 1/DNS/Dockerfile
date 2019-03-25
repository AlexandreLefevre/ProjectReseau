FROM ubuntu:18.04

RUN apt update && apt upgrade -y && apt install bind9 -y

ADD https://github.com/KodiOko/ProjectReseau/tree/master/Module%201/DNS/named.conf /etc/bind/named.conf
ADD https://github.com/KodiOko/ProjectReseau/tree/master/Module%201/DNS/named.conf.local /etc/bind/named.conf.local
ADD https://github.com/KodiOko/ProjectReseau/tree/master/Module%201/DNS/named.conf.options /etc/bind/named.conf.options

ADD https://github.com/KodiOko/ProjectReseau/tree/master/Module%201/DNS/zones/db.wt17.ephec-ti.be /etc/bind/zones/db.wt17.ephec-ti.be
ADD https://github.com/KodiOko/ProjectReseau/tree/master/Module%201/DNS/zones/db.77.51 /etc/bind/zones/db.77.51
ADD https://github.com/KodiOko/ProjectReseau/tree/master/Module%201/DNS/zones/db.root /etc/bind/zones/db.root

EXPOSE 53

CMD named -g
