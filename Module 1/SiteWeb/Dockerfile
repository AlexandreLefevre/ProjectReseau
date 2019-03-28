FROM ubuntu:18.04

RUN apt-get update && apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get -y install \
 apache2 php7.0 php7.0-mysql libapache2-mod-php7.0 curl lynx-cur

COPY B2B/b2b.w15.ephec-ti.be.conf /etc/.....
COPY Intranet/intranet.w15.ephec-ti.be.conf /etc/.....
COPY Vitrine/w15.ephec-ti.be.conf /etc/.....

..
