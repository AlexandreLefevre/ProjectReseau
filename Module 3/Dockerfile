FROM ubuntu:16.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential wget libssl-dev libncurses5-dev \
    libnewt-dev libxml2-dev linux-headers-$(uname -r) uuid-dev \
    libsqlite3-dev libjansson-dev  \
    subversion && \
    wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-15-current.tar.gz && \
    tar -xzvf asterisk-15-current.tar.gz &&  \
    cd asterisk-15.*/  && \
    ./contrib/scripts/get_mp3_source.sh && \
    ./configure && \
    make menuselect.makeopts && \
    menuselect/menuselect \
    --enable CORE-SOUNDS-FR-ULAW \
    --enable MOH-OPSOUND-ULAW \
    --enable EXTRA-SOUNDS-FR-ULAW \
    menuselect.makeopts && \
    make && make install  && make samples && make config && \
    apt-get clean 

ADD  https://github.com/AlexandreLefevre/ProjectReseau/blob/master/Module%203/conf/extensions.conf /etc/asterisk/extensions.conf
ADD  https://github.com/AlexandreLefevre/ProjectReseau/blob/master/Module%203/conf/voicemail.conf /etc/asterisk/voicemail.conf
ADD  https://github.com/AlexandreLefevre/ProjectReseau/blob/master/Module%203/conf/users.conf /etc/asterisk/users.conf
ADD  https://github.com/AlexandreLefevre/ProjectReseau/blob/master/Module%203/conf/sip.conf /etc/asterisk/sip.conf


EXPOSE 5060 5060/udp
EXPOSE 10000-20000/udp
    
CMD asterisk -fvvvvv
    
