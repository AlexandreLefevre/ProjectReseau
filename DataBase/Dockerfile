FROM ubuntu:16.04


# Install MySQL 5.7
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update &&\
    apt-get install -y --force-yes \
    mysql-server-5.7 && \
    service mysql stop && \
    sed -e 's/^datadir\t.*$/datadir = \/data/' -i /etc/mysql/my.cnf && \
    sed -e 's/^bind-address\t.*$/bind-address = 0.0.0.0/' -i /etc/mysql/my.cnf && \
    cp /etc/mysql/my.cnf /usr/share/mysql/my-default.cnf && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add scripts
ADD script /script
RUN chmod +x /script/*.sh
RUN touch /.firstrun
